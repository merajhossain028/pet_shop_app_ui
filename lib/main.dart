import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: dogsImage.length, //Length is coming from the dogsImage list
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          width: 150,
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12,
                                  offset: const Offset(0, 3),
                                  color: Colors.grey.withOpacity(0.1),
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  dogsImage[index], //image form dogsImage list
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.orange[100],
                                    ),
                                    child: Center(
                                      child: Text(
                                        dogsTag[index], //tag form dogsTag list
                                        style: TextStyle(
                                          color: Colors.orange[500],
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                dogsName[index], //name form dogsName list
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                               Text(
                                dogsDate[index], //date form dogsDate list
                                style: const  TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Cats',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          width: 150,
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 12,
                                offset: const Offset(0, 3),
                                color: Colors.grey.withOpacity(0.1),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/dog1.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.orange[100],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'BANANA',
                                        style: TextStyle(
                                          color: Colors.orange[500],
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Marly',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '17-JUN-2021',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
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
