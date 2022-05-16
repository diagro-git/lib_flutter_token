/// Define what access the user has on a permission.
///
/// Example usage which create read and update access for a permission:
/// ```dart
/// var p = Permission.fromString('ru');
/// ```
class Permission
{


  final bool read;

  final bool create;

  final bool update;

  final bool delete;

  final bool publish;

  final bool export;


  Permission({
    this.read = false,
    this.create = false,
    this.update = false,
    this.delete = false,
    this.publish = false,
    this.export = false,
  });

  factory Permission.fromString(String permissions)
  {
    bool read = false, create = false, update = false, delete = false, publish = false, export = false;

    for(var i = 0 ; i < permissions.length ; i++) {
      switch(permissions[i]) {
        case 'r':
          read = true;
          break;
        case 'c':
          create = true;
          break;
        case 'u':
          update = true;
          break;
        case 'd':
          delete = true;
          break;
        case 'p':
          publish = true;
          break;
        case 'e':
          export = true;
          break;
      }
    }

    return Permission(read: read, create: create, update: update, delete: delete, publish: publish, export: export);
  }

  bool can(String abbillity)
  {
    switch(abbillity) {
      case 'read': return read;
      case 'create': return create;
      case 'update': return update;
      case 'delete': return delete;
      case 'publish': return publish;
      case 'export': return export;
      default: return false;
    }
  }

}