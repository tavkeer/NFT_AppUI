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
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'lib/assets/ethereum.png',
                                    scale: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Floor price",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text(
                                  '+ 0.34',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Text(
                                '3.52',
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w500),
                              ),
                            ]),
                      ),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.group_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Sales",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text(
                                  '+ 42',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Text(
                                '456',
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                      ),
                    )
                  ]),
                )),
            Positioned(
                bottom: 35,
                left: 10,
                child: Container(
                  height: screenwidth * 0.2,
                  width: screenwidth * 0.4,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black.withOpacity(0.45)),
                  child: Center(
                      child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('lib/assets/ethereum.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '758',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.9)),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Volume',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.white.withOpacity(0.8)),
                          )
                        ],
                      )
                    ],
                  )),
                )),
            Positioned(
                left: screenwidth * 0.38,
                bottom: 35,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: screenwidth * 0.2,
                    width: screenwidth * 0.2,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(child: Image.asset('lib/assets/c.png')),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
