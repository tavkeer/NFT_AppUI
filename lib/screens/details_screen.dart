// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables,

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: screenheight,
        width: screenwidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment(-0.25, 0),
                image: AssetImage(
                  'lib/assets/detail.png',
                ),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
                left: 10,
                top: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: screenwidth * 0.15,
                    width: screenwidth * 0.15,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(child: Icon(Icons.arrow_back_ios)),
                  ),
                )),
            Positioned(
                right: 10,
                top: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: screenwidth * 0.15,
                    width: screenwidth * 0.15,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5)),
                    child: Center(
                        child: Icon(
                      Icons.bookmark_outline,
                      color: Colors.white,
                    )),
                  ),
                )),
            Positioned(
                right: screenwidth * 0.155,
                top: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: screenwidth * 0.15,
                    width: screenwidth * 0.15,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(child: Icon(Icons.favorite_outline)),
                  ),
                )),
            Positioned(
              top: screenheight * 0.2,
              left: 10,
              child: Container(
                height: screenheight * 0.05,
                width: screenwidth * 0.35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 0.7, color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    '@lay.designer',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  )),
                ),
              ),
            ),
            Positioned(
              top: screenheight * 0.2,
              left: screenwidth * 0.35 + 16,
              child: Container(
                height: screenheight * 0.05,
                width: screenwidth * 0.14,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    'New',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  )),
                ),
              ),
            ),
            Positioned(
                top: screenheight * 0.3,
                left: 10,
                child: Text(
                  'Monkey\nHyperbeast',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 0.9),
                )),
            Positioned(
              top: screenheight * 0.44,
              left: 10,
              child: SizedBox(
                height: screenheight * 0.15,
                width: screenwidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '00:',
                          style: TextStyle(
                              fontSize: screenheight * 0.04,
                              color: Colors.white),
                        ),
                        Text('Hours',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('29:',
                            style: TextStyle(
                                fontSize: screenheight * 0.04,
                                color: Colors.white)),
                        Text('Minutes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('14',
                            style: TextStyle(
                                fontSize: screenheight * 0.04,
                                color: Colors.white)),
                        Text('Seconds',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: screenheight * 0.62,
                left: 10,
                child: SizedBox(
                  width: screenwidth,
                  child: Row(children: [
                    Container(
                      height: screenwidth * 0.4 + 30,
                      width: screenwidth * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.96),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: screenwidth * 0.4 + 30,
                      width: screenwidth * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(30)),
                    )
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
