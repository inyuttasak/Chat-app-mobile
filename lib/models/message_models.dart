import 'package:chatapp/models/user_model.dart';

class Message {
  final User sender;
  final String time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: In,
    time: '5:30 PM',
    text: 'Hey dude! Even dead I\'m the hero. Love you 3000 guys.',
    unread: true,
  ),
  Message(
    sender: Aum,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Message(
    sender: Wiraphat,
    time: '3:30 PM',
    text: 'WOW! this soul world is amazing, but miss you guys.',
    unread: false,
  ),
  Message(
    sender: Pjay,
    time: '1:30 PM',
    text: 'HULK SMASH!!',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: In,
    time: '4:30 PM',
    text: 'ขอบคุณครับผม',
    unread: true,
  ),
  Message(
    sender: admin,
    time: '3:45 PM',
    text: 'สามารถมารับยาและตรวจสอบอาการเพิ่มเติมได้เลยค่ะ',
    unread: true,
  ),
  Message(
    sender: In,
    time: '4:30 PM',
    text: 'สามารถไปรับยาที่ห้องพยาบาลได้เลยไหมครับ',
    unread: true,
  ),
  Message(
    sender: admin,
    time: '3:45 PM',
    text: 'อาจจะเกิดจากอาการไข้หวัดค่ะ',
    unread: true,
  ),
  Message(
    sender: In,
    time: '2:30 PM',
    text: 'ผมรู้สึกปวดหัว เจ็บคอ มีอาการไอ และคัดจมูกครับ มันเป้นอาการอะไรเหรอครับ',
    unread: true,
  ),

  Message(
    sender: admin,
    time: '2:00 PM',
    text: 'สวัสดีค่ะ มีอะไรจะสอบถามหรือปรึกษาคะ',
    unread: true,
  ),
  Message(
    sender: In,
    time: '2:00 PM',
    text: 'สวัสดีครับ',
    unread: true,
  ),
];

get currentUser => admin;