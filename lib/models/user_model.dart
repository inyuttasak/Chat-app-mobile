class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User admin = User(
  id: 0,
  name: 'Rv Healt Care',
  imageUrl: 'assets/images/rv1.png',
  isOnline: true,
);

// USERS
final User In = User(
  id: 1,
  name: 'In',
  imageUrl: 'assets/images/pro1.jpg',
  isOnline: true,
);
final User Aum = User(
  id: 2,
  name: 'Aum',
  imageUrl: 'assets/images/pro3.jpg',
  isOnline: true,
);
final User Pjay = User(
  id: 3,
  name: 'P_Jay',
  imageUrl: 'assets/images/rv1.png',
  isOnline: false,
);
final User Wiraphat = User(
  id: 4,
  name: 'Wiraphat Fripui',
  imageUrl: 'assets/images/pro2.jpg',
  isOnline: false,
);
