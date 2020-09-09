// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsStore on _ChatsStore, Store {
  Computed<List<Map<dynamic, dynamic>>> _$myChatsComputed;

  @override
  List<Map<dynamic, dynamic>> get myChats => (_$myChatsComputed ??=
          Computed<List<Map<dynamic, dynamic>>>(() => super.myChats,
              name: '_ChatsStore.myChats'))
      .value;
  Computed<List<Map<dynamic, dynamic>>> _$chatsIParticipateComputed;

  @override
  List<Map<dynamic, dynamic>> get chatsIParticipate =>
      (_$chatsIParticipateComputed ??= Computed<List<Map<dynamic, dynamic>>>(
              () => super.chatsIParticipate,
              name: '_ChatsStore.chatsIParticipate'))
          .value;

  final _$chatsAtom = Atom(name: '_ChatsStore.chats');

  @override
  List<Map<dynamic, dynamic>> get chats {
    _$chatsAtom.reportRead();
    return super.chats;
  }

  @override
  set chats(List<Map<dynamic, dynamic>> value) {
    _$chatsAtom.reportWrite(value, super.chats, () {
      super.chats = value;
    });
  }

  final _$_ChatsStoreActionController = ActionController(name: '_ChatsStore');

  @override
  void addMessage(dynamic chatId, dynamic message) {
    final _$actionInfo = _$_ChatsStoreActionController.startAction(
        name: '_ChatsStore.addMessage');
    try {
      return super.addMessage(chatId, message);
    } finally {
      _$_ChatsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chats: ${chats},
myChats: ${myChats},
chatsIParticipate: ${chatsIParticipate}
    ''';
  }
}
