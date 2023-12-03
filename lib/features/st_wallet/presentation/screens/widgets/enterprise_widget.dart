import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class EnterpriseWidget extends StatelessWidget {
  const EnterpriseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            color: const Color(0xff045d94),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: [
            const Image(
              image:
              AssetImage('assets/images/Frame 107.png'),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Text(
              'Enterprise',
              style: Styles.style14,
            ),
            Text('\$299',
                style: Styles.style14.copyWith(
                    decoration: TextDecoration.lineThrough)),
            Text('\$155',
                style: Styles.style14
                    .copyWith(color: Colors.lightBlue)),
          ],
        ),
      ),
    );
  }
}
