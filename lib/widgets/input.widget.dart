import 'package:flutter/material.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

class Input extends StatelessWidget {
  var label = "";
  MoneyMaskedTextController ctrl = MoneyMaskedTextController(leftSymbol: 'R\$');

  // ignore: use_key_in_widget_constructors
  Input({
    @required label,
    @required ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: const TextStyle(
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
            controller: ctrl,
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
    );
  }
}
