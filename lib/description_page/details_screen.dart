import 'dart:math';

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.5,
            child: Stack(
              children: [
                Image.network(
                  'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F08%2F04%2Fcream-golden-retriever-closeup-91607998-2000.jpg',
                  height: screenSize.height * 0.5,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            //Navigator.pop(context);
                          },
                          child: const Icon(
                            size: 40,
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Marly',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          'Arizona, U.S.A',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.red,
                  size: 40,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '6 Months',
                        style: TextStyle(
                          color: Color(0xFFFF5722),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Age',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '6 Months',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Age',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '6 Months',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Age',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
