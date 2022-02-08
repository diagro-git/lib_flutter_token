import '../flutter_token.dart';

/// Define what applications the user has access to.
///
/// Example usage which create read and update access for a permission:
/// ```dart
/// var application = new Application(id: 1, name: 'my app name');
/// application.addPermission( Permission.fromString('...) );
/// ```
class Application
{


  final int id;

  final String name;

  final Map<String, Permission> permissions = {};


  Application({
    required this.id,
    required this.name
  });


  factory Application.fromJson(Map<String, dynamic> json)
  {
    var app = new Application(id: json['id'], name: json['name']);
    Map<String, dynamic> permissions = json['permissions'];

    for(var entry in permissions.entries) {
      app.addPermission(entry.key, Permission.fromString(entry.value));
    }

    return app;
  }


  Application addPermission(String name, Permission p)
  {
    permissions.putIfAbsent(name, () => p);
    return this;
  }


}