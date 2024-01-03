import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../../core/utils/styles.dart';

class MediumTermTextDetail extends StatelessWidget {
  const MediumTermTextDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0x440E0E23),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0x2317BBEF)),
            borderRadius: BorderRadius.circular(3),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text\never since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is \ndummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text  Lorem Ipsum has been the industrys standard dummy text.',
                style: Styles.style14,
              ),
              CustomSized.sizedHeight20,
              Text(
                'Alert !',
                style: Styles.style18Yellow,
              ),
              Text(
                'Lorem Ipsum has been the industrys standard dummy text never since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is \ndummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text  Lorem Ipsum has been the industrys standard dummy text.',
                style: Styles.style14,
              ),
              CustomSized.sizedHeight10,
            ],
          ),
        ),
      ),
    );
  }
}
