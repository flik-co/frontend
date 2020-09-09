import 'package:mobx/mobx.dart';

// Include generated file
part 'chats.g.dart';

// This is the class used by rest of your codebase
class ChatsStore = _ChatsStore with _$ChatsStore;

// The store-class
abstract class _ChatsStore with Store {
  @observable
  List<Map> chats = [
    {
      'created_by': {
        'name': 'João',
      },
      'id': '8051af71-7ea8-4f45-b6d0-1e3c92164cdf',
      'last_message': {
        'created_at': DateTime(2020, 9, 14, 8, 50, 10),
        'created_by': {
          'name': 'Pedro',
        },
        'content': 'Bom dia, amigos!',
      },
      'messages': [
        {
          'created_at': DateTime(2020, 9, 14, 8, 50, 10),
          'created_by': {
            'name': 'Adalberto',
          },
          'content': 'Bom dia!',
        },
        {
          'created_at': DateTime(2020, 9, 14, 8, 50, 10),
          'created_by': {
            'name': 'Marcos',
          },
          'content': 'Olá! Bom dia.',
        },
        {
          'created_at': DateTime(2020, 9, 14, 8, 50, 10),
          'created_by': {
            'name': 'Pedro',
          },
          'content': 'Bom dia, amigos!',
        },
      ],
      'title': 'Coca-Cola',
    },
    {
      'created_by': {
        'name': 'Você',
      },
      'id': 'b01b33c6-ab74-49a6-acb4-6b854235479d',
      'last_message': {
        'created_at': DateTime(2020, 9, 14, 8, 50, 10),
        'created_by': {
          'name': 'Adalberto',
        },
        'content': 'Não acho que esse seja o melhor preço da região. Vamos aguardar?',
      },
      'messages': [
        {
          'created_at': DateTime(2020, 9, 14, 8, 50, 10),
          'created_by': {
            'name': 'Adalberto',
          },
          'content': 'Não acho que esse seja o melhor preço da região. Vamos aguardar?',
        },
      ],
      'title': 'Leite Ninho',
    },
  ];

  @action
  void addMessage(chatId, message) {
    List<Map> newChats = chats.map((chat) {
      String currentChatId = chat['id'];
      if (chatId == currentChatId) {
        chat['last_message'] = message;
        chat['messages'].add(message);
      }

      return chat;
    }).toList();

    chats = newChats;
  }

  @computed
  List<Map> get myChats => chats.where(
    (chat) => chat['created_by']['name'] == 'Você'
  ).toList();

  @computed
  List<Map> get chatsIParticipate => chats.where(
    (chat) => chat['created_by']['name'] != 'Você'
  ).toList();
}
