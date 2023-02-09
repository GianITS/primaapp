import 'dart:convert';

// import 'package:primaapp/primaapp.dart' as primaapp;
import 'package:http/http.dart' as http;
import 'dart:io';

Future main(List<String> arguments) async {
  getQuote();
}

void getQuote() async {
  final url = Uri.parse('https://the-one-api.dev/v2/quote');
  final res = await http.get(url, headers: {
    HttpHeaders.authorizationHeader: 'Bearer iUip64JAjBbsn1FB1akD',
  });

  final data = jsonDecode(res.body) as Map<String, dynamic>;

  print(data['docs'][23]['dialog']);
  //Gollum' Gollum' Gollum', and we wept precious. We wept to be so alone.
}
