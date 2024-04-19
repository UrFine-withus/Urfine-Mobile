import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/emergency_contacts/emergency_contacts_bloc.dart';
import 'package:urfine/domain/emergency/model/emergency_model.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsListScreen extends StatelessWidget {
  const ContactsListScreen({super.key, required this.type});
  final EmergencyContactType type;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final state = BlocProvider.of<EmergencyContactsBloc>(context).state;
      switch (type) {
        case EmergencyContactType.hospital:
          if (state.hospitalContacts.isNotEmpty) return;
          break;
        case EmergencyContactType.bloodBank:
          if (state.bloodBankContacts.isNotEmpty) return;
          break;
        case EmergencyContactType.ambulance:
          if (state.ambulanceContacts.isNotEmpty) return;
          break;
        case EmergencyContactType.clinic:
          if (state.clinicContacts.isNotEmpty) return;
          break;
      }
      BlocProvider.of<EmergencyContactsBloc>(context)
          .add(EmergencyContactsEvent(type: type));
    });
    return Scaffold(
      body: BlocConsumer<EmergencyContactsBloc, EmergencyContactsState>(
        listener: (context, state) {
          state.emergencyContactsFailureorSuccess.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  showUrFineSnackbar(
                      context,
                      failure.map(
                        serverFailure: (_) =>
                            "we are unable to process your request",
                        noInternet: (_) => "No internet connection",
                        clientFailure: (_) => "An unexpected error occurred",
                        authFailure: (value) => value.message,
                        otherFailure: (value) => "Someting went wrong",
                      ));
                },
                (_) {},
              );
            },
          );
        },
        builder: (context, state) {
          final List<EmergencyContact> contacts;
          switch (type) {
            case EmergencyContactType.hospital:
              contacts = state.hospitalContacts;
              break;
            case EmergencyContactType.bloodBank:
              contacts = state.bloodBankContacts;
              break;
            case EmergencyContactType.ambulance:
              contacts = state.ambulanceContacts;
              break;
            case EmergencyContactType.clinic:
              contacts = state.clinicContacts;
              break;
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                kHeight30,
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/styling/Vector.png',
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: kLightColor,
                            ),
                          ),
                        ),
                        Text(
                          "${type.name[0].toUpperCase()}${type.name.substring(1).toLowerCase()} contacts",
                          style: TextStyle(
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w700,
                            color: kLightColor,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
                if (state.isLoading)
                  SizedBox(
                    height: 600.h,
                    child: Center(
                      child: loadingWidget,
                    ),
                  )
                else
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final contact = contacts[index];
                          return ContactListTile(
                            title: contact.name,
                            address: contact.address,
                            phoneNumber: contact.phone,
                            mobileNumber: contact.mobile,
                            location: contact.location,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return kHeight20;
                        },
                        itemCount: contacts.length),
                  ),
                kHeight30,
              ],
            ),
          );
        },
      ),
    );
  }
}

class ContactListTile extends StatelessWidget {
  const ContactListTile({
    super.key,
    required this.title,
    required this.address,
    required this.phoneNumber,
    required this.mobileNumber,
    required this.location,
  });
  final String title;
  final String? address;
  final String? phoneNumber;
  final String? mobileNumber;
  final String? location;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: kExtraLightColor,
            blurRadius: 10.r,
            spreadRadius: 0.r,
            offset: Offset(5, 5),
          ),
        ],
        border: Border.all(
          color: kExtraLightColor,
          width: 3,
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 22.w,
          vertical: 11.h,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            height: 1.2,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: address != null
            ? Text(
                address!,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              )
            : const SizedBox(),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (location != null)
              GestureDetector(
                onTap: () async {
                  final _url = Uri.parse(location!);
                  if (!await launchUrl(_url)) {
                    showUrFineSnackbar(context, "Could not open location");
                  }
                },
                child: Icon(
                  Icons.pin_drop_sharp,
                  color: kLightColor,
                  size: 30.dg,
                ),
              ),
            if (phoneNumber != null) kWidth10,
            if (phoneNumber != null)
              GestureDetector(
                onTap: () async {
                  if (!await launchUrl(Uri.parse("tel:$phoneNumber"))) {
                    showUrFineSnackbar(context, "invalid phone number");
                  }
                },
                child: Icon(
                  Icons.call,
                  color: kLightColor,
                  size: 30.dg,
                ),
              ),
            if (mobileNumber != null) kWidth10,
            if (mobileNumber != null)
              GestureDetector(
                onTap: () async {
                  if (!await launchUrl(Uri.parse("tel:$mobileNumber"))) {
                    showUrFineSnackbar(context, "invalid phone number");
                  }
                },
                child: Icon(
                  Icons.smartphone,
                  color: kLightColor,
                  size: 30.dg,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
