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
    required TResult Function() started,
    required TResult Function() onHubConnected,
    required TResult Function(List<Message> messages) onGetAllMessages,
    required TResult Function(Message message) messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<Message> messages)? onGetAllMessages,
    TResult? Function(Message message)? messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onHubConnected,
    TResult Function(List<Message> messages)? onGetAllMessages,
    TResult Function(Message message)? messageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllMessages value) onGetAllMessages,
    required TResult Function(_MessageReceived value) messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult Function(_MessageReceived value)? messageReceived,
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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onHubConnected,
    required TResult Function(List<Message> messages) onGetAllMessages,
    required TResult Function(Message message) messageReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<Message> messages)? onGetAllMessages,
    TResult? Function(Message message)? messageReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onHubConnected,
    TResult Function(List<Message> messages)? onGetAllMessages,
    TResult Function(Message message)? messageReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllMessages value) onGetAllMessages,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
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
    required TResult Function() started,
    required TResult Function() onHubConnected,
    required TResult Function(List<Message> messages) onGetAllMessages,
    required TResult Function(Message message) messageReceived,
  }) {
    return onHubConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<Message> messages)? onGetAllMessages,
    TResult? Function(Message message)? messageReceived,
  }) {
    return onHubConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onHubConnected,
    TResult Function(List<Message> messages)? onGetAllMessages,
    TResult Function(Message message)? messageReceived,
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
    required TResult Function(_OnGetAllMessages value) onGetAllMessages,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return onHubConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
  }) {
    return onHubConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult Function(_MessageReceived value)? messageReceived,
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
abstract class _$$OnGetAllMessagesImplCopyWith<$Res> {
  factory _$$OnGetAllMessagesImplCopyWith(_$OnGetAllMessagesImpl value,
          $Res Function(_$OnGetAllMessagesImpl) then) =
      __$$OnGetAllMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$OnGetAllMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$OnGetAllMessagesImpl>
    implements _$$OnGetAllMessagesImplCopyWith<$Res> {
  __$$OnGetAllMessagesImplCopyWithImpl(_$OnGetAllMessagesImpl _value,
      $Res Function(_$OnGetAllMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$OnGetAllMessagesImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$OnGetAllMessagesImpl implements _OnGetAllMessages {
  const _$OnGetAllMessagesImpl(final List<Message> messages)
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatEvent.onGetAllMessages(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetAllMessagesImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetAllMessagesImplCopyWith<_$OnGetAllMessagesImpl> get copyWith =>
      __$$OnGetAllMessagesImplCopyWithImpl<_$OnGetAllMessagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onHubConnected,
    required TResult Function(List<Message> messages) onGetAllMessages,
    required TResult Function(Message message) messageReceived,
  }) {
    return onGetAllMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<Message> messages)? onGetAllMessages,
    TResult? Function(Message message)? messageReceived,
  }) {
    return onGetAllMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onHubConnected,
    TResult Function(List<Message> messages)? onGetAllMessages,
    TResult Function(Message message)? messageReceived,
    required TResult orElse(),
  }) {
    if (onGetAllMessages != null) {
      return onGetAllMessages(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnHubConnected value) onHubConnected,
    required TResult Function(_OnGetAllMessages value) onGetAllMessages,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return onGetAllMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
  }) {
    return onGetAllMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult Function(_MessageReceived value)? messageReceived,
    required TResult orElse(),
  }) {
    if (onGetAllMessages != null) {
      return onGetAllMessages(this);
    }
    return orElse();
  }
}

abstract class _OnGetAllMessages implements ChatEvent {
  const factory _OnGetAllMessages(final List<Message> messages) =
      _$OnGetAllMessagesImpl;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$OnGetAllMessagesImplCopyWith<_$OnGetAllMessagesImpl> get copyWith =>
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
    required TResult Function() started,
    required TResult Function() onHubConnected,
    required TResult Function(List<Message> messages) onGetAllMessages,
    required TResult Function(Message message) messageReceived,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onHubConnected,
    TResult? Function(List<Message> messages)? onGetAllMessages,
    TResult? Function(Message message)? messageReceived,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onHubConnected,
    TResult Function(List<Message> messages)? onGetAllMessages,
    TResult Function(Message message)? messageReceived,
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
    required TResult Function(_OnGetAllMessages value) onGetAllMessages,
    required TResult Function(_MessageReceived value) messageReceived,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnHubConnected value)? onHubConnected,
    TResult? Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult? Function(_MessageReceived value)? messageReceived,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnHubConnected value)? onHubConnected,
    TResult Function(_OnGetAllMessages value)? onGetAllMessages,
    TResult Function(_MessageReceived value)? messageReceived,
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
mixin _$ChatState {
  List<Message> get messages => throw _privateConstructorUsedError;
  ChatViewState get viewState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({List<Message> messages, ChatViewState viewState});
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
  $Res call({List<Message> messages, ChatViewState viewState});
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
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {final List<Message> messages = const [],
      this.viewState = ChatViewState.loading})
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
  String toString() {
    return 'ChatState(messages: $messages, viewState: $viewState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messages), viewState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final List<Message> messages,
      final ChatViewState viewState}) = _$ChatStateImpl;

  @override
  List<Message> get messages;
  @override
  ChatViewState get viewState;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
