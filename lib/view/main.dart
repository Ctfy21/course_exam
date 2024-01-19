import 'package:course_exam/func/get_currency_json.dart';
import 'package:course_exam/view/load.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Currency App'),
        ),
        body: FutureBuilder<List<dynamic>>(              
          future: getCurrenyJson('https://api.currencyapi.com/v3/latest?apikey=cur_live_KpNfQUj0vrj1cinZSYOY2z5eUAzspAHFFd7Iiyt5'), // a previously-obtained Future<String> or null
          builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
            if(snapshot.hasData){
              return const Text('Contain data');
            }
            else if(snapshot.hasError){
              return const AlertDialog(
                title: Text("Error"),
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                content: Text("Please, connect to the Internet and try again!"),
              );
            }
            else{
              return const MyLoadPage();
            }
          },
        ),
      )
    );
  }
}

