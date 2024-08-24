// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int friendId) started,
    required TResult Function() onHubConnected,
    required TResult Function(List<ConversationEntity> conversations)
        onGetAllConversations,
    required TResult Function(List<MessageEntity> messages) onGetMessages,
    required TResult Function(Message message) messageReceived,
    required TResult Function(String message) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int friendId)? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult? Function(List<MessageEntity> messages)? onGetMessages,
    TResult? Function(Message message)? messageReceived,
    TResult? Function(String message)? messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int friendId)? started,
    TResult Function()? onHubConnected,
    TResult Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult Function(List<MessageEntity> messages)? onGetMessages,
    TResult Function(Message message)? messageReceived,
    TResult Function(String message)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllConversations value)
        onGetAllConversations,
    required TResult Function(_OnGetMessages value) onGetMessages,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageSent value) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult? Function(_OnGetMessages value)? onGetMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageSent value)? messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult Function(_OnGetMessages value)? onGetMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int friendId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendId = null,
  }) {
    return _then(_$StartedImpl(
      null == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.friendId);

  @override
  final int friendId;

  @override
  String toString() {
    return 'ChatEvent.started(friendId: $friendId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, friendId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int friendId) started,
    required TResult Function() onHubConnected,
    required TResult Function(List<ConversationEntity> conversations)
        onGetAllConversations,
    required TResult Function(List<MessageEntity> messages) onGetMessages,
    required TResult Function(Message message) messageReceived,
    required TResult Function(String message) messageSent,
  }) {
    return started(friendId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int friendId)? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult? Function(List<MessageEntity> messages)? onGetMessages,
    TResult? Function(Message message)? messageReceived,
    TResult? Function(String message)? messageSent,
  }) {
    return started?.call(friendId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int friendId)? started,
    TResult Function()? onHubConnected,
    TResult Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult Function(List<MessageEntity> messages)? onGetMessages,
    TResult Function(Message message)? messageReceived,
    TResult Function(String message)? messageSent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(friendId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllConversations value)
        onGetAllConversations,
    required TResult Function(_OnGetMessages value) onGetMessages,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageSent value) messageSent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult? Function(_OnGetMessages value)? onGetMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageSent value)? messageSent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult Function(_OnGetMessages value)? onGetMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started(final int friendId) = _$StartedImpl;

  int get friendId;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnHubConnectedImplCopyWith<$Res> {
  factory _$$OnHubConnectedImplCopyWith(_$OnHubConnectedImpl value,
          $Res Function(_$OnHubConnectedImpl) then) =
      __$$OnHubConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnHubConnectedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$OnHubConnectedImpl>
    implements _$$OnHubConnectedImplCopyWith<$Res> {
  __$$OnHubConnectedImplCopyWithImpl(
      _$OnHubConnectedImpl _value, $Res Function(_$OnHubConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnHubConnectedImpl implements _OnHubConnected {
  const _$OnHubConnectedImpl();

  @override
  String toString() {
    return 'ChatEvent.onHubConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnHubConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int friendId) started,
    required TResult Function() onHubConnected,
    required TResult Function(List<ConversationEntity> conversations)
        onGetAllConversations,
    required TResult Function(List<MessageEntity> messages) onGetMessages,
    required TResult Function(Message message) messageReceived,
    required TResult Function(String message) messageSent,
  }) {
    return onHubConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int friendId)? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult? Function(List<MessageEntity> messages)? onGetMessages,
    TResult? Function(Message message)? messageReceived,
    TResult? Function(String message)? messageSent,
  }) {
    return onHubConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int friendId)? started,
    TResult Function()? onHubConnected,
    TResult Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult Function(List<MessageEntity> messages)? onGetMessages,
    TResult Function(Message message)? messageReceived,
    TResult Function(String message)? messageSent,
    required TResult orElse(),
  }) {
    if (onHubConnected != null) {
      return onHubConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllConversations value)
        onGetAllConversations,
    required TResult Function(_OnGetMessages value) onGetMessages,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageSent value) messageSent,
  }) {
    return onHubConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult? Function(_OnGetMessages value)? onGetMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageSent value)? messageSent,
  }) {
    return onHubConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult Function(_OnGetMessages value)? onGetMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (onHubConnected != null) {
      return onHubConnected(this);
    }
    return orElse();
  }
}

abstract class _OnHubConnected implements ChatEvent {
  const factory _OnHubConnected() = _$OnHubConnectedImpl;
}

/// @nodoc
abstract class _$$OnGetAllConversationsImplCopyWith<$Res> {
  factory _$$OnGetAllConversationsImplCopyWith(
          _$OnGetAllConversationsImpl value,
          $Res Function(_$OnGetAllConversationsImpl) then) =
      __$$OnGetAllConversationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationEntity> conversations});
}

/// @nodoc
class __$$OnGetAllConversationsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$OnGetAllConversationsImpl>
    implements _$$OnGetAllConversationsImplCopyWith<$Res> {
  __$$OnGetAllConversationsImplCopyWithImpl(_$OnGetAllConversationsImpl _value,
      $Res Function(_$OnGetAllConversationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$OnGetAllConversationsImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ConversationEntity>,
    ));
  }
}

/// @nodoc

class _$OnGetAllConversationsImpl implements _OnGetAllConversations {
  const _$OnGetAllConversationsImpl(
      final List<ConversationEntity> conversations)
      : _conversations = conversations;

  final List<ConversationEntity> _conversations;
  @override
  List<ConversationEntity> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ChatEvent.onGetAllConversations(conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetAllConversationsImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetAllConversationsImplCopyWith<_$OnGetAllConversationsImpl>
      get copyWith => __$$OnGetAllConversationsImplCopyWithImpl<
          _$OnGetAllConversationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int friendId) started,
    required TResult Function() onHubConnected,
    required TResult Function(List<ConversationEntity> conversations)
        onGetAllConversations,
    required TResult Function(List<MessageEntity> messages) onGetMessages,
    required TResult Function(Message message) messageReceived,
    required TResult Function(String message) messageSent,
  }) {
    return onGetAllConversations(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int friendId)? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult? Function(List<MessageEntity> messages)? onGetMessages,
    TResult? Function(Message message)? messageReceived,
    TResult? Function(String message)? messageSent,
  }) {
    return onGetAllConversations?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int friendId)? started,
    TResult Function()? onHubConnected,
    TResult Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult Function(List<MessageEntity> messages)? onGetMessages,
    TResult Function(Message message)? messageReceived,
    TResult Function(String message)? messageSent,
    required TResult orElse(),
  }) {
    if (onGetAllConversations != null) {
      return onGetAllConversations(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllConversations value)
        onGetAllConversations,
    required TResult Function(_OnGetMessages value) onGetMessages,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageSent value) messageSent,
  }) {
    return onGetAllConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult? Function(_OnGetMessages value)? onGetMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageSent value)? messageSent,
  }) {
    return onGetAllConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult Function(_OnGetMessages value)? onGetMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (onGetAllConversations != null) {
      return onGetAllConversations(this);
    }
    return orElse();
  }
}

abstract class _OnGetAllConversations implements ChatEvent {
  const factory _OnGetAllConversations(
          final List<ConversationEntity> conversations) =
      _$OnGetAllConversationsImpl;

  List<ConversationEntity> get conversations;
  @JsonKey(ignore: true)
  _$$OnGetAllConversationsImplCopyWith<_$OnGetAllConversationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetMessagesImplCopyWith<$Res> {
  factory _$$OnGetMessagesImplCopyWith(
          _$OnGetMessagesImpl value, $Res Function(_$OnGetMessagesImpl) then) =
      __$$OnGetMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageEntity> messages});
}

/// @nodoc
class __$$OnGetMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$OnGetMessagesImpl>
    implements _$$OnGetMessagesImplCopyWith<$Res> {
  __$$OnGetMessagesImplCopyWithImpl(
      _$OnGetMessagesImpl _value, $Res Function(_$OnGetMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$OnGetMessagesImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
    ));
  }
}

/// @nodoc

class _$OnGetMessagesImpl implements _OnGetMessages {
  const _$OnGetMessagesImpl(final List<MessageEntity> messages)
      : _messages = messages;

  final List<MessageEntity> _messages;
  @override
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatEvent.onGetMessages(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetMessagesImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetMessagesImplCopyWith<_$OnGetMessagesImpl> get copyWith =>
      __$$OnGetMessagesImplCopyWithImpl<_$OnGetMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int friendId) started,
    required TResult Function() onHubConnected,
    required TResult Function(List<ConversationEntity> conversations)
        onGetAllConversations,
    required TResult Function(List<MessageEntity> messages) onGetMessages,
    required TResult Function(Message message) messageReceived,
    required TResult Function(String message) messageSent,
  }) {
    return onGetMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int friendId)? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult? Function(List<MessageEntity> messages)? onGetMessages,
    TResult? Function(Message message)? messageReceived,
    TResult? Function(String message)? messageSent,
  }) {
    return onGetMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int friendId)? started,
    TResult Function()? onHubConnected,
    TResult Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult Function(List<MessageEntity> messages)? onGetMessages,
    TResult Function(Message message)? messageReceived,
    TResult Function(String message)? messageSent,
    required TResult orElse(),
  }) {
    if (onGetMessages != null) {
      return onGetMessages(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllConversations value)
        onGetAllConversations,
    required TResult Function(_OnGetMessages value) onGetMessages,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageSent value) messageSent,
  }) {
    return onGetMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult? Function(_OnGetMessages value)? onGetMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageSent value)? messageSent,
  }) {
    return onGetMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult Function(_OnGetMessages value)? onGetMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (onGetMessages != null) {
      return onGetMessages(this);
    }
    return orElse();
  }
}

abstract class _OnGetMessages implements ChatEvent {
  const factory _OnGetMessages(final List<MessageEntity> messages) =
      _$OnGetMessagesImpl;

  List<MessageEntity> get messages;
  @JsonKey(ignore: true)
  _$$OnGetMessagesImplCopyWith<_$OnGetMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(_$MessageReceivedImpl value,
          $Res Function(_$MessageReceivedImpl) then) =
      __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
      _$MessageReceivedImpl _value, $Res Function(_$MessageReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageReceivedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$MessageReceivedImpl implements _MessageReceived {
  const _$MessageReceivedImpl(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.messageReceived(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int friendId) started,
    required TResult Function() onHubConnected,
    required TResult Function(List<ConversationEntity> conversations)
        onGetAllConversations,
    required TResult Function(List<MessageEntity> messages) onGetMessages,
    required TResult Function(Message message) messageReceived,
    required TResult Function(String message) messageSent,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int friendId)? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult? Function(List<MessageEntity> messages)? onGetMessages,
    TResult? Function(Message message)? messageReceived,
    TResult? Function(String message)? messageSent,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int friendId)? started,
    TResult Function()? onHubConnected,
    TResult Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult Function(List<MessageEntity> messages)? onGetMessages,
    TResult Function(Message message)? messageReceived,
    TResult Function(String message)? messageSent,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllConversations value)
        onGetAllConversations,
    required TResult Function(_OnGetMessages value) onGetMessages,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageSent value) messageSent,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult? Function(_OnGetMessages value)? onGetMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageSent value)? messageSent,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult Function(_OnGetMessages value)? onGetMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class _MessageReceived implements ChatEvent {
  const factory _MessageReceived(final Message message) = _$MessageReceivedImpl;

  Message get message;
  @JsonKey(ignore: true)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res> {
  factory _$$MessageSentImplCopyWith(
          _$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) =
      __$$MessageSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessageSentImpl>
    implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(
      _$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageSentImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageSentImpl implements _MessageSent {
  const _$MessageSentImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.messageSent(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSentImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      __$$MessageSentImplCopyWithImpl<_$MessageSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int friendId) started,
    required TResult Function() onHubConnected,
    required TResult Function(List<ConversationEntity> conversations)
        onGetAllConversations,
    required TResult Function(List<MessageEntity> messages) onGetMessages,
    required TResult Function(Message message) messageReceived,
    required TResult Function(String message) messageSent,
  }) {
    return messageSent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int friendId)? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult? Function(List<MessageEntity> messages)? onGetMessages,
    TResult? Function(Message message)? messageReceived,
    TResult? Function(String message)? messageSent,
  }) {
    return messageSent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int friendId)? started,
    TResult Function()? onHubConnected,
    TResult Function(List<ConversationEntity> conversations)?
        onGetAllConversations,
    TResult Function(List<MessageEntity> messages)? onGetMessages,
    TResult Function(Message message)? messageReceived,
    TResult Function(String message)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllConversations value)
        onGetAllConversations,
    required TResult Function(_OnGetMessages value) onGetMessages,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageSent value) messageSent,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult? Function(_OnGetMessages value)? onGetMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageSent value)? messageSent,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllConversations value)? onGetAllConversations,
    TResult Function(_OnGetMessages value)? onGetMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _MessageSent implements ChatEvent {
  const factory _MessageSent(final String message) = _$MessageSentImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<Message> get messages => throw _privateConstructorUsedError;
  ChatViewState get viewState => throw _privateConstructorUsedError;
  int get friendId => throw _privateConstructorUsedError;
  int get conversationId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {List<Message> messages,
      ChatViewState viewState,
      int friendId,
      int conversationId});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? viewState = null,
    Object? friendId = null,
    Object? conversationId = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ChatViewState,
      friendId: null == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as int,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Message> messages,
      ChatViewState viewState,
      int friendId,
      int conversationId});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? viewState = null,
    Object? friendId = null,
    Object? conversationId = null,
  }) {
    return _then(_$ChatStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ChatViewState,
      friendId: null == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as int,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {final List<Message> messages = const [],
      this.viewState = ChatViewState.loading,
      this.friendId = -1,
      this.conversationId = -1})
      : _messages = messages;

  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final ChatViewState viewState;
  @override
  @JsonKey()
  final int friendId;
  @override
  @JsonKey()
  final int conversationId;

  @override
  String toString() {
    return 'ChatState(messages: $messages, viewState: $viewState, friendId: $friendId, conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState) &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      viewState,
      friendId,
      conversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final List<Message> messages,
      final ChatViewState viewState,
      final int friendId,
      final int conversationId}) = _$ChatStateImpl;

  @override
  List<Message> get messages;
  @override
  ChatViewState get viewState;
  @override
  int get friendId;
  @override
  int get conversationId;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
