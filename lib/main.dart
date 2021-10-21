import 'package:combustivel/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final gasCtrl = MoneyMaskedTextController(leftSymbol: 'R\$');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          // chamando a pagina logo
          Logo(),
          Row(
            children: <Widget>[
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child: const Text(
                  "Gasolina",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextFormField(
                  controller: gasCtrl,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: "Big Shoulders Display",
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
