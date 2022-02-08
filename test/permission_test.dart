import 'package:test/test.dart';
import 'package:flutter_token/src/permission.dart';

void main() {
  group('Permission', () {
    test('create with read', () {
      var p = Permission.fromString('r');
      expect(p.read, true);
    });

    test('create with create', () {
      var p = Permission.fromString('c');
      expect(p.create, true);
    });

    test('create with update', () {
      var p = Permission.fromString('u');
      expect(p.update, true);
    });

    test('create with delete', () {
      var p = Permission.fromString('d');
      expect(p.delete, true);
    });

    test('create with publish', () {
      var p = Permission.fromString('p');
      expect(p.publish, true);
    });

    test('create with export', () {
      var p = Permission.fromString('e');
      expect(p.export, true);
    });

    test('create with empty string', () {
      var p = Permission.fromString('');
      expect(p.read, false);
      expect(p.create, false);
      expect(p.update, false);
      expect(p.delete, false);
      expect(p.publish, false);
      expect(p.export, false);
    });

    test('create with everything', () {
      var p = Permission.fromString('epudrc');
      expect(p.read, true);
      expect(p.create, true);
      expect(p.update, true);
      expect(p.delete, true);
      expect(p.publish, true);
      expect(p.export, true);
    });

    test('create with read, delete en publish', () {
      var p = Permission.fromString('rdp');
      expect(p.read, true);
      expect(p.create, false);
      expect(p.update, false);
      expect(p.delete, true);
      expect(p.publish, true);
      expect(p.export, false);
    });
  });
}