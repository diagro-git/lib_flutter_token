import '../flutter_token.dart';

class User
{


  final int id;

  final String name;

  final String locale;

  final String lang;

  final String timezone;

  final String? role;

  final Company? company;

  final List<Application> applications = [];


  User({
    required this.id,
    required this.name,
    required this.locale,
    required this.lang,
    required this.timezone,
    this.role,
    this.company
  });


  factory User.fromAT(Map<String, dynamic> json)
  {
    var user = User(
        id: json['id'],
        name: json['name'],
        locale: json['locale'],
        lang: json['lang'],
        timezone: json['timezone'],
    );

    return user;
  }


  factory User.fromAAT(Map<String, dynamic> json)
  {
    var user = User(
        id: json['user']['id'],
        name: json['user']['name'],
        locale: json['user']['locale'],
        lang: json['user']['lang'],
        timezone: json['user']['timezone'],
        role: json['user']['role'],
        company: Company.fromJson(json['company'])
    );

    List<dynamic> apps = json['applications'];
    for(var app in apps) {
      user.addApplication(Application.fromJson(app));
    }

    return user;
  }


  User addApplication(Application application)
  {
    applications.add(application);
    return this;
  }


}