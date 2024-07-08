import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class OfferTile extends StatelessWidget {
  final String address;
  final String imageUrl;

  const OfferTile({super.key, required this.address, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 8),
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: SliderButton(
                backgroundColor: const Color(0xffF7E7DC),
                buttonColor: const Color(0xffFFF8DB),
                action: () async {
                  return false; //return false if you want to avoid dismissing the widget in the tree.
                },
                label: const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Gladkova St.,25',
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
                width: double.infinity,
                height: 60,
                shimmer: false,
                vibrationFlag: false,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
