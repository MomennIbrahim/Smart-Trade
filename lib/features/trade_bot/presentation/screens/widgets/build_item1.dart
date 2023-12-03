// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class BuildItem1 extends StatelessWidget {
//   const BuildItem1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Column(
//               children: [
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.arrow_upward),
//                     Text(
//                       'PURSHASING PRICE',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 40.h,
//                 ),
//                 SizedBox(
//                   height: 200.h,
//                   child: ListView.separated(
//                     itemBuilder: (context, index) => const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.arrow_downward),
//                         Column(
//                           children: [
//                             Text(
//                               '0.02718',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             Text(
//                               '21.05264485',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     separatorBuilder: (context, index) => SizedBox(
//                       height: 10.h,
//                     ),
//                     itemCount: 5,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.arrow_upward),
//                     Text(
//                       'DATE',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 40.h,
//                 ),
//                 SizedBox(
//                   height: 200.h,
//                   child: ListView.separated(
//                     itemBuilder: (context, index) => const Column(
//                       children: [
//                         Text(
//                           '2023/07/10',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         Text('4:13', style: TextStyle(color: Colors.white)),
//                       ],
//                     ),
//                     separatorBuilder: (context, index) => SizedBox(
//                       height: 10.h,
//                     ),
//                     itemCount: 5,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
