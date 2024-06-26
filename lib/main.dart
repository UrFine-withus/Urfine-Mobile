import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:urfine/application/add_user_data/add_user_data_bloc.dart';
import 'package:urfine/application/authentication/authentication_bloc.dart';
import 'package:urfine/application/checkup_history/checkup_history_bloc.dart';
import 'package:urfine/application/emergency_contacts/emergency_contacts_bloc.dart';
import 'package:urfine/application/dietry_plan_chat/dietry_chat_bloc.dart';
import 'package:urfine/application/health_logs/health_logs_bloc.dart';
import 'package:urfine/application/medical_records/medical_records_bloc.dart';
import 'package:urfine/application/request_checkup/request_checkup_bloc.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/dietry_plan/model/message_db_model.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';
import 'package:urfine/presentation/check%20up%20history/check_up_history_screen.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/diet%20suggestion/diet_suggestion_screen.dart';
import 'package:urfine/presentation/emergency/contacts_list.dart';
import 'package:urfine/presentation/emergency/emergency_contacts_screen.dart';
import 'package:urfine/presentation/healthlogs%20screen/health_logs_screen.dart';
import 'package:urfine/presentation/home/home_screen.dart';
import 'package:urfine/presentation/login%20screen/forgot_password_screen.dart';
import 'package:urfine/presentation/login%20screen/login_screen.dart';
import 'package:urfine/presentation/med%20records%20screen/med_records_screen.dart';
import 'package:urfine/presentation/med%20records%20screen/widgets/view_prescription.dart';
import 'package:urfine/presentation/request%20screen/request_screen.dart';
import 'package:urfine/presentation/signup%20screen/signup_screen.dart';
import 'package:urfine/presentation/splash%20screen/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/user%20details/user_details.dart';
import 'package:urfine/presentation/welcome/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await configureInjuction();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(MessageDBModelAdapter().typeId)) {
    Hive.registerAdapter(MessageDBModelAdapter());
  }
  await dotenv.load(fileName: "lib/.env");
  getIt.registerSingleton<UserDataModel>(UserDataModel());
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.max,
  );
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  var initializationSettingsAndroid =
      const AndroidInitializationSettings('@drawable/launcher_icon');
  var initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification!.android;

    if (notification != null && android != null) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            icon: android.smallIcon,
            color: kWhiteColor,
          ),
        ),
      );
    }
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //initializing the screen util package to change the size of the widgets according to the screen size
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (context) => getIt<AuthenticationBloc>(),
        ),
        BlocProvider<AddUserDataBloc>(
          create: (context) => getIt<AddUserDataBloc>(),
        ),
        BlocProvider<DietryChatBloc>(
          create: (context) => getIt<DietryChatBloc>(),
        ),
        BlocProvider<EmergencyContactsBloc>(
          create: (context) => getIt<EmergencyContactsBloc>(),
        ),
        BlocProvider<RequestCheckupBloc>(
          create: (context) => getIt<RequestCheckupBloc>(),
        ),
        BlocProvider<HealthLogsBloc>(
          create: (context) => getIt<HealthLogsBloc>(),
        ),
        BlocProvider<CheckupHistoryBloc>(
          create: (context) => getIt<CheckupHistoryBloc>(),
        ),
        BlocProvider<MedicalRecordsBloc>(
          create: (context) => getIt<MedicalRecordsBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'UrFine',
          theme: ThemeData(
            fontFamily: 'Inter',
            //setting white colour as the default background colour of all pages
            scaffoldBackgroundColor: kWhiteColor,
          ),
          //setting the initial route to the splash screen
          home: SplashScreen(),
          onGenerateRoute: (settings) {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                if (settings.name == '/login') {
                  return LoginScreen();
                } else if (settings.name == '/signup') {
                  return const SignUpScreen();
                } else if (settings.name == '/userDetails') {
                  return const UserDetailsScreen();
                } else if (settings.name == '/splash') {
                  return const SplashScreen();
                } else if (settings.name == '/home') {
                  return HomeScreen();
                } else if (settings.name == '/emergency') {
                  return EmergencyContactsScreen();
                } else if (settings.name == '/healthLogs') {
                  return HealthLogsScreen();
                } else if (settings.name == '/request') {
                  return RequestScreen();
                } else if (settings.name == '/medrec') {
                  return MedRecordsScreen();
                } else if (settings.name == '/dietSugggstion') {
                  return DietSuggestionScreen();
                } else if (settings.name == '/welcome') {
                  return WelcomeScreen();
                } else if (settings.name == '/forgotPassword') {
                  return ForgotPasswordScreen();
                } else if (settings.name == '/checkupHistory') {
                  return CheckUpHistoryScreen();
                }
                return const SizedBox();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              transitionDuration: Duration(milliseconds: 280),
            );
          },
        ),
      ),
    );
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}
