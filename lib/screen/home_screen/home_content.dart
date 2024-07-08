import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

import '../../widgets/widgets.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7E7DC),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xffDAC0A3),
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Saint Petersburg',
                    style: TextStyle(
                      color: Color(0xffDAC0A3),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/girl.jfif'),
              radius: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi, Marina',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              const Text(
                "let's select your perfect place",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            Text(
                              'BUY',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              '1034',
                              style: GoogleFonts.roboto(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'offers',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            Text(
                              'RENT',
                              style: GoogleFonts.roboto(
                                color: const Color(0xffDAC0A3),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              '2 212',
                              style: GoogleFonts.roboto(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffDAC0A3),
                              ),
                            ),
                            Text(
                              'offers',
                              style: GoogleFonts.roboto(
                                color: const Color(0xffDAC0A3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const OfferTile(
                address: 'Gubina St., 11',
                imageUrl: 'assets/images/1.jpg',
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/5.jpg',
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16, left: 4, right: 4),
                              child: SliderButton(
                                backgroundColor: const Color(0xffF7E7DC),
                                buttonColor: const Color(0xffFFF8DB),
                                action: () async {
                                  return false; //return false if you want to avoid dismissing the widget in the tree.
                                },
                                label: const Center(
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Gulbina St.,11',
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
                                height: 60,
                                shimmer: false,
                                vibrationFlag: false,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/5.jpg',
                                  height: 146,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16, left: 4, right: 4),
                                  child: SliderButton(
                                    backgroundColor: const Color(0xffF7E7DC),
                                    buttonColor: const Color(0xffFFF8DB),
                                    action: () async {
                                      return false; //return false if you want to avoid dismissing the widget in the tree.
                                    },
                                    label: const Center(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        'Trefoleva St.,43',
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
                                    height: 60,
                                    shimmer: false,
                                    vibrationFlag: false,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/5.jpg',
                                  height: 146,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16, left: 4, right: 4),
                                  child: SliderButton(
                                    backgroundColor: const Color(0xffF7E7DC),
                                    buttonColor: const Color(0xffFFF8DB),
                                    action: () async {
                                      return false; //return false if you want to avoid dismissing the widget in the tree.
                                    },
                                    label: const Center(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        'Sedova St.,22',
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
                                    height: 60,
                                    shimmer: false,
                                    vibrationFlag: false,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
