import '../flutter_token.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

String pub_key = '''-----BEGIN PUBLIC KEY-----
MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAx6rM4vfjSiTkQ0Z61haF
HlD37jk66m1O6Go9QBcQbyHkwAuxhkyqpfHjrcnCFiUYihl+2ivhrEyvnWeLu+cM
TgqnKEtFfuQ+pW9H5WLqhMF6epZ088Pe+5pGSPaM00R+CC+oBFdrgWyfJsyqxCYZ
K+02kV73yzwm4PktkfAweXqwXh0T38Vlj8wFI0eg8vMsZibS3a16uZ0J+/WiClw+
kBhd7fLuP9mOSqHFsyb8Yu16K3xN64nAK9TzI1WnvNUjQd6cVrnhzvDZNh1IXnIu
hw2OTShjd5ccX7fvWIYj1YAW8t4LRONV504Qf0dluAimRaXhmUDmoKKcf7Cz4ZTp
cn4A+vb5bln5pDzM35fzKlCj+a0hPvuS+TRaMi+ci3u+llJ2S6oOctNwqd8OwCmM
Sxr3o6lX9R14CzEYwODVFSKHVcz1Lx+RY1SXYmTo11NfGecmGy4fMk3SNJsXirgz
JBCzkeWrmfwI88T+dEUZl0CKp1LIiZWHyR2BfYz/EZMbAgMBAAE=
-----END PUBLIC KEY-----''';

abstract class Token
{

  User? user;


  Token.decode(String token)
  {
      final jwt = JWT.verify(token, RSAPublicKey(pub_key));
      if(validPayload(jwt.payload)) {
        user = decodeJwtPayload(jwt.payload);
      }
  }

  User? decodeJwtPayload(Map<String, dynamic> jwt);

  bool validPayload(Map<String, dynamic> payload);


}