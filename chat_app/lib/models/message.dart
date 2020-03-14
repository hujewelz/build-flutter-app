import 'package:chat_app/models/user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked = false,
    this.unread = true,
  });
}

// Current user
final currentUser = User(
  id: 0,
  name: 'Current User',
  avatar: 'assets/images/a.jpg',
);

// Users
final grey = User(
  id: 1,
  name: 'Grey',
  avatar: 'assets/images/grey.jpeg',
);
final james = User(
  id: 1,
  name: 'James',
  avatar: 'assets/images/james.jpeg',
);
final jake = User(
  id: 2,
  name: 'Jaks',
  avatar: 'assets/images/jake.jpeg',
);
final john = User(
  id: 3,
  name: 'John',
  avatar: 'assets/images/john.jpeg',
);
final elizabeth = User(
  id: 4,
  name: 'Elizabeth',
  avatar: 'assets/images/elizabeth.jpeg',
);

// Favorite contacts
List<User> favorites = [grey, elizabeth, james, jake, john];

final List<Message> chats = [
  Message(
    sender: elizabeth,
    time: '5:30PM',
    text: 'Hey, how\'s it going? What did you do today?',
  ),
  Message(
    sender: grey,
    time: '4:20PM',
    text: 'Hey, how\'s it going? What did you do today?',
  ),
  Message(
    sender: john,
    time: '2:12PM',
    text: 'Hey, how\'s it going? What did you do today?',
  ),
  Message(
    sender: jake,
    time: '10:00AM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
  Message(
    sender: james,
    time: '8:50AM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: elizabeth,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
  ),
  Message(
    sender: elizabeth,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
  ),
  Message(
    sender: elizabeth,
    time: '3:15 PM',
    text: 'All the food',
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
  ),
  Message(
    sender: elizabeth,
    time: '2:00 PM',
    text: 'I ate so much food today.',
  ),
];
