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
    @PathParam('id') required this.userId,
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
  ChatBloc setBloc() => ChatBloc()..add(const ChatEvent.started());

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
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/${widget.userId}.jpg'),
            ),
            const SizedBox(width: 10),
            Text(widget.chatName, style: context.textTheme.bodyLarge),
          ],
        ),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<ChatBloc, ChatState>(
            listenWhen: (previous, current) =>
                previous.messages != current.messages,
            listener: (context, state) {
              chatController.loadMoreData(state.messages);
            },
          ),
        ],
        child: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return ChatView(
              chatController: chatController,
              chatViewState: ChatViewState.hasMessages,
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 1.7, horizontal: 6),
                  margin: const EdgeInsets.only(left: 10, right: 16),
                  backgroundColor: context.secondaryHeaderColor,
                  borderColor: context.theme.scaffoldBackgroundColor,
                  reactionsBottomSheetConfig: ReactionsBottomSheetConfiguration(
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
            );
          },
        ),
      ),
    );
  }
}
