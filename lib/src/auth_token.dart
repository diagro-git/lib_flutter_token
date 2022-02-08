import 'package:flutter_token/src/user.dart';
import 'token.dart';

class AuthToken extends Token
{

  AuthToken.decode(String token) : super.decode(token);


  @override
  bool validPayload(Map<String, dynamic> payload)
  {
    return payload.containsKey('user');
  }

  @override
  User? decodeJwtPayload(Map<String, dynamic> payload)
  {
    return User.fromAT(payload);
  }

}