import 'package:chat_app/models/user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool usLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.usLiked = false,
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

final List<Message> messages = [
  Message(
    sender: elizabeth,
    time: '5:30PM',
    text: 'Hi, How are you',
  ),
  Message(
    sender: grey,
    time: '4:20PM',
    text: 'Hi, How are you, I come ddd djfkdjffk',
  ),
  Message(
    sender: john,
    time: '2:12PM',
    text: 'Hi, How are you, djsflldfjls',
  ),
  Message(
    sender: jake,
    time: '10:00AM',
    text: 'Hi, How are you, djf jdk djkd jdkf',
    unread: false,
  ),
  Message(
    sender: james,
    time: '8:50AM',
    text: 'Hi, How are you',
    unread: false,
  ),
];
