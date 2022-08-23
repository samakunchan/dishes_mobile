import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dishes_mobile/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountRepository {
  Future<bool> connectToGmail() async {
    return await launchUrl(Uri.parse(GmailPath.apiUrl),
        webOnlyWindowName: '_self');
  }

  Future<String> getTokens({required String code}) async {
    print('Je suis dans la req http create');

    final object = jsonEncode({
      'code': code,
      'client_id': GmailPath.clientId,
      'client_secret': GmailPath.clientSecret,
      'redirect_uri': GmailPath.redirectUri[0],
      'grant_type': 'authorization_code'
    });
    try {
      var url = Uri.parse('https://accounts.google.com/o/oauth2/token');
      var response = await http.post(url, body: object);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      return response.body;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
