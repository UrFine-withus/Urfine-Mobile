import 'dart:developer';

import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/dietry_plan_chat/dietry_chat_bloc.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class DietSuggestionScreen extends StatefulWidget {
  DietSuggestionScreen({super.key});

  @override
  State<DietSuggestionScreen> createState() => _DietSuggestionScreenState();
}

class _DietSuggestionScreenState extends State<DietSuggestionScreen> {
  final TextEditingController sendMessageController = TextEditingController();

  void onSendTap(String msg, MessageType messageType) {
    BlocProvider.of<DietryChatBloc>(context).add(DietryChatEvent(msg));
    sendMessageController.clear();
  }
  
  late final ChatController chatController;
  final ScrollController scrollController = ScrollController();
  @override
  initState() {
    super.initState();
    final dietState = BlocProvider.of<DietryChatBloc>(context).state;
    chatController = ChatController(
      initialMessageList: [...dietState.messages],
      scrollController: scrollController,
      chatUsers: [
        ChatUser(id: '1', name: 'me'),
        ChatUser(
          id: '2',
          name: 'gemini',
        )
      ],
    );
    BlocProvider.of<DietryChatBloc>(context)
        .add(DietryChatEvent.init(chatController));
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels == 0) {
          log('At Bottom');
        } else {
          log('At Top');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<DietryChatBloc, DietryChatState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Stack(
            children: [
              ChatView(
                typeIndicatorConfig: TypeIndicatorConfiguration(
                  indicatorSize: 10,
                  flashingCircleBrightColor: kExtraLightColor,
                  flashingCircleDarkColor: kLightColor,
                ),
                profileCircleConfig: ProfileCircleConfiguration(
                  profileImageUrl:
                      "https://cdn.dribbble.com/userupload/3498881/file/original-a35eafc54c7747f5884849626abaec9d.png?resize=400x0",
                ),
                showTypingIndicator: state.isTyping,
                appBar: _ChatViewAppbar(),
                currentUser: ChatUser(id: '1', name: 'me'),
                chatController: chatController,
                chatViewState: ChatViewState.hasMessages,
                chatBubbleConfig: ChatBubbleConfiguration(
                  outgoingChatBubbleConfig: ChatBubble(
                    color: kExtraLightColor,
                    borderRadius: BorderRadius.circular(20),
                    textStyle: TextStyle(
                      color: kBlackColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  inComingChatBubbleConfig: ChatBubble(
                    color: kLightColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                    textStyle: TextStyle(
                      color: kBlackColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    senderNameTextStyle: TextStyle(fontSize: 0),
                  ),
                ),
                chatBackgroundConfig: ChatBackgroundConfiguration(
                  messageTimeTextStyle: TextStyle(
                    color: kBlackColor,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sendMessageBuilder: (replyMessage) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: kBlackColor,
                          width: 1,
                        )),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: sendMessageController,
                            decoration: InputDecoration(
                              hintText: 'You wanna ask anything?',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            onSendTap(
                                sendMessageController.text, MessageType.text);
                          },
                          icon: Icon(
                            Icons.send_sharp,
                            color: kLightColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                featureActiveConfig: FeatureActiveConfig(
                  enableSwipeToReply: false,
                  enableSwipeToSeeTime: true,
                  enableDoubleTapToLike: false,
                  enableReactionPopup: false,
                  enableReplySnackBar: false,
                  enableOtherUserProfileAvatar: false,
                ),
              ),
              if (state.isLoading)
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: kBlackColor.withOpacity(0.3),
                  child: loadingWidget,
                )
            ],
          );
        },
      ),
    );
  }
}

class _ChatViewAppbar extends StatelessWidget {
  const _ChatViewAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 30.h,
          bottom: 20.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: RadialGradient(
            center: Alignment(-1.0, -1.0),
            radius: 1.0,
            colors: [
              Colors.white,
              Color(0xffFFE6DF),
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25.sp,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "UrFine Assistant",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ));
  }
}
