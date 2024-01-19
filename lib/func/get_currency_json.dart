import 'dart:convert';

import 'package:course_exam/model/currency.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> getCurrenyJson(String url) async {
  final uri = Uri.parse(url);
  try{
    final response = await http.get(uri);
    if(response.statusCode == 200){
      final body = response.body;
      Map<String, dynamic> json = jsonDecode(body)['data'];
      List<Currency> listCurrencies = json.map((key, value) => Currency cur =   )

      return List.empty();
    }
    else{
      return List.empty();
    }
  }
  catch(e){
    print(e.toString());
    throw Exception('Please connect to the Internet!');
  }
}