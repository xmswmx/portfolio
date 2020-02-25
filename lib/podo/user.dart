class User {
  String name;
  String nickname;
  String position;
  Contact contact;

  User({this.name, this.nickname, this.position, this.contact});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    nickname = json['nickname'];
    position = json['position'];
    contact =
    json['contact'] != null ? new Contact.fromJson(json['contact']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['nickname'] = this.nickname;
    data['position'] = this.position;
    if (this.contact != null) {
      data['contact'] = this.contact.toJson();
    }
    return data;
  }
}

class Contact {
  String github;
  String whatsapp;
  String facebook;
  String email;
  String medium;
  String telegram;
  String twitter;

  Contact(
      {this.github,
        this.whatsapp,
        this.facebook,
        this.email,
        this.medium,
        this.telegram,
        this.twitter});

  Contact.fromJson(Map<String, dynamic> json) {
    github = json['github'];
    whatsapp = json['whatsapp'];
    facebook = json['facebook'];
    email = json['email'];
    medium = json['medium'];
    telegram = json['telegram'];
    twitter = json['twitter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['github'] = this.github;
    data['whatsapp'] = this.whatsapp;
    data['facebook'] = this.facebook;
    data['email'] = this.email;
    data['medium'] = this.medium;
    data['telegram'] = this.telegram;
    data['twitter'] = this.twitter;
    return data;
  }
}
