import 'package:auto_route/auto_route.dart';
import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/app/base/base_page.dart';
import 'package:messenger_clone_flutter/src/app/pages/chats/subviews/bloc/chat_bloc.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/datetime_extension.dart';

@RoutePage()
class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({
    super.key,
    required this.userId,
    required this.chatName,
  });

  final int userId;
  final String chatName;

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends BasePageState<ChatDetailPage, ChatBloc> {
  late final ScrollController scrollController;
  late final ChatController chatController;

  @override
  ChatBloc setBloc() => ChatBloc()..add(ChatEvent.started(widget.userId));

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    chatController = ChatController(
      initialMessageList: [],
      scrollController: scrollController,
      otherUsers: [
        ChatUser(
          id: widget.userId.toString(),
          name: widget.chatName,
        )
      ],
      currentUser: ChatUser(
        id: context.appBloc.currentUser!.id.toString(),
        name: context.appBloc.currentUser!.fullName,
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/${widget.userId}.jpg'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.chatName, style: context.textTheme.bodyLarge),
                const SizedBox(height: 5),
                BlocBuilder<ChatBloc, ChatState>(
                  builder: (context, state) {
                    if (state.isFriendActive) {
                      return Text(
                        'Active now',
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colorScheme.onSecondaryContainer
                              .withOpacity(.5),
                        ),
                      );
                    }
                    return Text(
                      'Offline',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.onSecondaryContainer
                            .withOpacity(.5),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<ChatBloc, ChatState>(
            listenWhen: (previous, current) =>
                previous.messages != current.messages,
            listener: (context, state) {
              if (chatController.initialMessageList.isNotEmpty) {
                chatController.addMessage(state.messages.last);
              } else {
                chatController.loadMoreData(state.messages);
              }
            },
          ),
        ],
        child: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return SafeArea(
              child: ChatView(
                chatController: chatController,
                chatViewState: state.viewState,
                onSendTap: (message, replyMessage, messageType) =>
                    bloc.add(ChatEvent.messageSent(message)),
                emojiPickerSheetConfig: Config(
                  emojiViewConfig: EmojiViewConfig(
                    backgroundColor: context.theme.scaffoldBackgroundColor,
                  ),
                  searchViewConfig: SearchViewConfig(
                    backgroundColor: context.theme.scaffoldBackgroundColor,
                  ),
                ),
                messageConfig: MessageConfiguration(
                  imageMessageConfig: ImageMessageConfiguration(
                    shareIconConfig: ShareIconConfiguration(
                      padding: const EdgeInsets.fromLTRB(10, 7, 7, 7),
                    ),
                  ),
                  messageReactionConfig: MessageReactionConfiguration(
                    backgroundColor: context.secondaryHeaderColor,
                    borderColor: context.theme.scaffoldBackgroundColor,
                    reactionsBottomSheetConfig:
                        ReactionsBottomSheetConfiguration(
                      backgroundColor: context.theme.scaffoldBackgroundColor,
                      reactionWidgetMargin: const EdgeInsets.only(bottom: 8),
                      reactionWidgetPadding: const EdgeInsets.all(8),
                      reactionWidgetDecoration: BoxDecoration(
                        color: context.theme.secondaryHeaderColor,
                        boxShadow: [
                          BoxShadow(
                            color: context.colorScheme.onInverseSurface
                                .withOpacity(.5),
                            offset: const Offset(0, 20),
                            blurRadius: 40,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      profileCircleRadius: 16,
                    ),
                  ),
                ),
                reactionPopupConfig: ReactionPopupConfiguration(
                  backgroundColor: context.theme.scaffoldBackgroundColor,
                  shadow: BoxShadow(
                    color: context.theme.shadowColor,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ),
                featureActiveConfig: const FeatureActiveConfig(
                  enableReplySnackBar: false,
                  enableOtherUserName: false,
                  enableOtherUserProfileAvatar: false,
                  enableCurrentUserProfileAvatar: false,
                ),
                repliedMessageConfig: RepliedMessageConfiguration(
                  backgroundColor: context.theme.secondaryHeaderColor,
                ),
                chatBackgroundConfig: ChatBackgroundConfiguration(
                  backgroundColor: context.theme.scaffoldBackgroundColor,
                  groupSeparatorBuilder: (separator) => Container(
                    decoration: BoxDecoration(
                      color: context.theme.secondaryHeaderColor.withOpacity(.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.symmetric(
                        vertical: 12, horizontal: context.width * .35),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      DateTime.parse(separator).getDay(),
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                chatBubbleConfig: ChatBubbleConfiguration(
                  inComingChatBubbleConfig: ChatBubble(
                    color: context.theme.secondaryHeaderColor,
                    textStyle: context.textTheme.bodyLarge,
                  ),
                  outgoingChatBubbleConfig: ChatBubble(
                    color: context.colorScheme.primary,
                    textStyle: context.textTheme.bodyLarge?.copyWith(
                      color: context.colorScheme.onPrimary,
                    ),
                  ),
                ),
                sendMessageConfig: SendMessageConfiguration(
                  enableCameraImagePicker: false,
                  enableGalleryImagePicker: false,
                  allowRecordingVoice: false,
                  textFieldBackgroundColor: context.theme.secondaryHeaderColor,
                  defaultSendButtonColor: context.theme.iconTheme.color,
                  textFieldConfig: TextFieldConfiguration(
                    hintText: 'Type a message',
                    textStyle: context.textTheme.bodyLarge,
                  ),
                  replyDialogColor: context.theme.primaryColor.withOpacity(.5),
                  replyMessageColor: context.colorScheme.onPrimaryContainer,
                  replyTitleColor: context.colorScheme.onPrimaryContainer,
                  closeIconColor: context.colorScheme.onPrimaryContainer,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
