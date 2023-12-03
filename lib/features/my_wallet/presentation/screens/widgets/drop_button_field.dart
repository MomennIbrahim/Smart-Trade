import 'package:flutter/material.dart';

import '../../../../../core/widgets/out_line_input_border.dart';

class WalletDropButtonField extends StatelessWidget {
  const WalletDropButtonField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButtonFormField(
          decoration: InputDecoration(
              focusedBorder: outLineInputBorder(),
              enabledBorder: outLineInputBorder()),
          style: const TextStyle(color: Colors.white),
          dropdownColor: Colors.black54,
          value: '-1',
          items: const [
            DropdownMenuItem(
              value: '-1',
              child: Text('Select Wallet'),
            ),
            DropdownMenuItem(
              value: '1',
              child: Text('Wallet One'),
            ),
            DropdownMenuItem(
              value: '2',
              child: Text('Wallet Two'),
            ),
            DropdownMenuItem(
              value: '3',
              child: Text('Wallet Three'),
            ),
          ],
          onChanged: (value) {}),
    );
  }
}
