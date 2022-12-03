import 'package:flutter/material.dart';
import 'package:tt_flutter_class/home/home_screen.dart';

import 'description_page/details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> dogsImage = [
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F08%2F04%2Fcream-golden-retriever-closeup-91607998-2000.jpg',
    'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/8/2020/03/GettyImages-512366437-e1583519258231-920x598.jpg',
    'https://www.rd.com/wp-content/uploads/2021/01/GettyImages-588935825.jpg',
    'https://www.monkoodog.com/wp-content/uploads/2022/03/Golden-Retriever-1.jpg',
    'http://cdn.akc.org/content/article-body-image/cavkingcharlessmalldogs.jpg',
  ];

  List<String> dogsTag = [
    'BANANA',
    'APPLE',
    'ORANGE',
    'MANGO',
    'GRAPE',
  ];
  List<String> dogsName = [
    'Marly',
    'Lucky',
    'Buddy',
    'Charlie',
    'Max',
  ];
  List<String> dogsDate = [
    '2021-01-01',
    '2021-01-02',
    '2021-01-03',
    '2021-01-04',
    '2021-01-05',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const DetailsScreen(),
        // HomeScreen(
        //     dogsImage: dogsImage,
        //     dogsTag: dogsTag,
        //     dogsName: dogsName,
        //     dogsDate: dogsDate),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? const Icon(Icons.home)
                  : const Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? const Icon(Icons.add_box_outlined)
                  : const Icon(Icons.add_box),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? const Icon(Icons.person)
                  : const Icon(Icons.person_add_alt_outlined),
              label: 'Person',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

