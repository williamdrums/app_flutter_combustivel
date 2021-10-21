import 'package:combustivel/widgets/input.widget.dart';
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
  final alcCtrl = MoneyMaskedTextController(leftSymbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          // chamando a pagina logo
          Logo(),
          Input(
            ctrl: gasCtrl,
            label: "Gasolina",
          ),
          // Input(
          //   ctrl: alcCtrl,
          //   label: "Álcool",
          // ),
        ],
      ),
    );
  }
}
