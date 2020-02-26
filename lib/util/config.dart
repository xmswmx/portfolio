import 'package:portfolio/podo/user.dart';

User user = User.fromJson({
  "name": "Festus Babajide Olusegun",
  "nickname": "JideGuru",
  "position": "Fullstack Developer",
  "contact": {
    "github": "http://github.com/jideguru",
    "whatsapp": "http://wa.me/22961701427",
    "facebook": "http://facebook.com/jideguru",
    "email": "mailto:guruliciousjide@gmail.com",
    "medium": "https://medium.com/@jideguru",
    "telegram": "http://t.me/jideguru",
    "twitter": "http://twitter.com/iamjideguru"
  }
});

List works = [
  {
    "name": "FileX",
    "info": "The goal of this projct is to show how files can be managed "
        "using the Flutter framework. "
        "\n\nThe whole FIle management was done with Dart code except Getting "
        "the Storage and Free storage which was done with Kotlin(Android)",
    "img": "https://repository-images.githubusercontent.com/236386849/708ffd00"
        "-457b-11ea-99cf-7c9f7dded0e7",
    "link": "https://github.com/JideGuru/FileX",
  },
  {
    "name": "FlutterEbookApp",
    "info": "This project was made mostly because i wanted to explore using XML "
        "based APIs in Flutter and also to know how file downloads work. "
        "\n\nFile Download is handle with Dio Plugin and the Feedbooks API "
        "was uses in the making of this app",
    "img": "https://github.com/JideGuru/FlutterEbookApp/raw/master/ss/mockup.png",
    "link": "https://github.com/JideGuru/FlutterEbookApp",
  },
  {
    "name": "FlutterSocialAppUIKit",
    "info": "One of my First projects in Flutter, i made it while practicing "
        "to make beautiful minimalist UIs with flutter. "
        "\n\nDesign was gotten from uplabs and recreated with Flutter",
    "img": "https://github.com/JideGuru/FlutterSocialAppUIKit/raw/master/ss/1.png",
    "link": "https://github.com/JideGuru/FlutterSocialAppUIKit",
  }
];