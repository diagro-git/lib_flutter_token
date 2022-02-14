import 'package:lib_flutter_token/src/user.dart';
import 'token.dart';

class AppAuthToken extends Token
{


  AppAuthToken.decode(String token) : super.decode(token);


  @override
  bool validPayload(Map<String, dynamic> payload)
  {
    return payload.containsKey('user') && payload.containsKey('company') && payload.containsKey('applications');
  }

  @override
  User? decodeJwtPayload(Map<String, dynamic> payload)
  {
    return User.fromAAT(payload);
  }

}