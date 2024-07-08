import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/5.jpg',
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: SliderButton(
                      backgroundColor: const Color(0xffF7E7DC),
                      buttonColor: const Color(0xffFFF8DB),
                      action: () async {
                        return false; //return false if you want to avoid dismissing the widget in the tree.
                      },
                      label: const Center(
                        child: Text(
                          'Gladkova St., 25',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff4a4a4a),
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      width: 300,
                      height: 60,
                      shimmer: false,
                      vibrationFlag: false,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 4),
            // Expanded(
            //   child: Column(
            //     children: [
            //       Expanded(
            //         child: Stack(
            //           children: [
            //             Image.asset(
            //               'assets/images/5.jpg',
            //               fit: BoxFit.cover,
            //               width: double.infinity,
            //               height: double.infinity,
            //             ),
            //             Positioned(
            //               bottom: 8,
            //               left: 8,
            //               right: 8,
            //               child: SliderButton(
            //                 backgroundColor: const Color(0xffF7E7DC),
            //                 buttonColor: const Color(0xffFFF8DB),
            //                 action: () async {
            //                   return false; //return false if you want to avoid dismissing the widget in the tree.
            //                 },
            //                 label: const Center(
            //                   child: Text(
            //                     'Trefoleva St., 43',
            //                     textAlign: TextAlign.center,
            //                     style: TextStyle(
            //                       color: Color(0xff4a4a4a),
            //                       fontWeight: FontWeight.w500,
            //                       fontSize: 17,
            //                     ),
            //                   ),
            //                 ),
            //                 icon: const Icon(
            //                   Icons.arrow_forward_ios,
            //                   size: 16,
            //                 ),
            //                 width: 300,
            //                 height: 60,
            //                 shimmer: false,
            //                 vibrationFlag: false,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 8),
            //       Expanded(
            //         child: Stack(
            //           children: [
            //             Image.asset(
            //               'assets/images/5.jpg',
            //               fit: BoxFit.cover,
            //               width: double.infinity,
            //               height: double.infinity,
            //             ),
            //             Positioned(
            //               bottom: 8,
            //               left: 8,
            //               right: 8,
            //               child: SliderButton(
            //                 backgroundColor: const Color(0xffF7E7DC),
            //                 buttonColor: const Color(0xffFFF8DB),
            //                 action: () async {
            //                   return false; //return false if you want to avoid dismissing the widget in the tree.
            //                 },
            //                 label: const Center(
            //                   child: Text(
            //                     'Sedova St., 22',
            //                     textAlign: TextAlign.center,
            //                     style: TextStyle(
            //                       color: Color(0xff4a4a4a),
            //                       fontWeight: FontWeight.w500,
            //                       fontSize: 17,
            //                     ),
            //                   ),
            //                 ),
            //                 icon: const Icon(
            //                   Icons.arrow_forward_ios,
            //                   size: 16,
            //                 ),
            //                 width: 300,
            //                 height: 60,
            //                 shimmer: false,
            //                 vibrationFlag: false,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
