import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/images/menu.svg',
                      width: 25,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584__340.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  height: 180,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image.asset(
                          'assets/images/cat.png',
                        ),
                      ),
                      Positioned(
                        right: 30,
                        top: 50,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Hello Osama',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Ready for an amazing and \nlucky experience',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Dogs',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
