import 'package:flutter/material.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  bool _isPopupVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/maps.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Map markers
          const Positioned(
            left: 100,
            top: 150,
            child: Icon(Icons.location_pin, color: Colors.orange, size: 40),
          ),
          const Positioned(
            left: 200,
            top: 250,
            child: Icon(Icons.location_pin, color: Colors.orange, size: 40),
          ),
          const Positioned(
            left: 150,
            top: 250,
            child: Icon(Icons.location_pin, color: Colors.orange, size: 40),
          ),
          const Positioned(
            left: 40,
            top: 250,
            child: Icon(Icons.location_pin, color: Colors.orange, size: 40),
          ),
          const Positioned(
            left: 40,
            top: 450,
            right: 20,
            child: Icon(Icons.location_pin, color: Colors.orange, size: 40),
          ),
          Positioned(
            left: 40,
            bottom: 100,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isPopupVisible = !_isPopupVisible;
                });
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: const Center(
                  child: Icon(Icons.send_and_archive_sharp),
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            bottom: 30,
            child: Container(
              height: 50,
              width: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Center(
                child: Icon(Icons.menu),
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 30,
            child: Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.menu, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'List of Variants',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Saint Petersburg',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Icon(Icons.compare_arrows_rounded),
                  ),
                ),
              ],
            ),
          ),

          if (_isPopupVisible)
            Positioned(
              bottom: 160,
              left: 80,
              child: Container(
                width: 150,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PopupMenuItem(
                      child: const Row(
                        children: [
                          Icon(Icons.local_florist, size: 20),
                          SizedBox(width: 8),
                          Text('Cosy areas'),
                        ],
                      ),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Row(
                        children: [
                          Icon(Icons.attach_money,
                              size: 20, color: Colors.orange),
                          SizedBox(width: 8),
                          Text(
                            'Price',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Row(
                        children: [
                          Icon(Icons.location_city, size: 20),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text('Infrastructure'),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Row(
                        children: [
                          Icon(Icons.layers_clear, size: 20),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text('Without any layer'),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
