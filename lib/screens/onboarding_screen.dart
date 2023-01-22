// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables,
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/screens/details_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(screenheight: screenheight, screenwidth: screenwidth),
            SizedBox(
              height: 10,
            ),
            Text(
              'EXPLORE',
              style: TextStyle(
                  fontSize: 60, height: 1, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  'THE',
                  style: TextStyle(
                      fontSize: 60, height: 0.8, fontWeight: FontWeight.w500),
                ),
                //FLAME ICON
                SizedBox(
                  height: screenheight * 0.048,
                  child: Image.asset(
                    'lib/assets/fire.png',
                  ),
                ),
                Text(
                  'MOST',
                  style: TextStyle(
                      fontSize: 60, height: 0.8, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              'POPULAR',
              style: TextStyle(
                  fontSize: 60, height: 0.9, fontWeight: FontWeight.w500),
            ),
            TagLine(screenwidth: screenwidth),
            SizedBox(
              height: 10,
            ),
            //nft section
            _mainNFTwidget(
                screenheight: screenheight, screenwidth: screenwidth),
            Spacer(),
            SizedBox(
              height: screenheight * 0.15,
              width: screenwidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '00:',
                        style: TextStyle(fontSize: screenheight * 0.1),
                      ),
                      Text('   Hours',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('29:',
                          style: TextStyle(fontSize: screenheight * 0.1)),
                      Text('  Minutes',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('14',
                          style: TextStyle(fontSize: screenheight * 0.1)),
                      Text('    Seconds',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            )
          ],
        ),
      )),
    );
  }
}

class _mainNFTwidget extends StatelessWidget {
  const _mainNFTwidget({
    Key? key,
    required this.screenheight,
    required this.screenwidth,
  }) : super(key: key);

  final double screenheight;
  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: screenheight * 0.37,
        width: screenwidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.bottomLeft,
                fit: BoxFit.cover,
                image: AssetImage(
                  'lib/assets/home.png',
                ))),
        child: SizedBox(
          width: screenwidth,
          child: Stack(
            children: [
              Positioned(
                  top: 10,
                  left: (screenwidth * 0.15),
                  child: Container(
                    height: screenwidth * 0.2,
                    width: screenwidth * 0.4,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black.withOpacity(0.35)),
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
                  top: 10,
                  left: 10,
                  child: Container(
                    height: screenwidth * 0.2,
                    width: screenwidth * 0.2,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: Text(
                        '25',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0),
                      ),
                    ),
                  )),
              Positioned(
                  top: screenheight * (0.33 / 2),
                  left: 10,
                  child: Text(
                    'Monkey\nHyperbeast',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        height: 0.9,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    height: screenwidth * 0.2,
                    width: screenwidth * 0.54,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black.withOpacity(0.35)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.group_outlined,
                            color: Colors.white.withOpacity(0.85),
                            size: screenwidth * 0.07,
                          ),
                          Text(
                            '+56',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white.withOpacity(0.85),
                            size: screenwidth * 0.07,
                          ),
                          Text(
                            '+12',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    )),
                  )),
              Positioned(
                  right: 8,
                  bottom: 8,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen()));
                    },
                    child: Container(
                      height: screenwidth * 0.2,
                      width: screenwidth * 0.2,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(child: Icon(Icons.arrow_forward_ios)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class TagLine extends StatelessWidget {
  const TagLine({
    Key? key,
    required this.screenwidth,
  }) : super(key: key);

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenwidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenwidth * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.7)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                '@lay.designer',
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Container(
            width: screenwidth * 0.125,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'New',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              )),
            ),
          ),
          Spacer(),
          Text(
            'NFT.',
            style: TextStyle(
                fontSize: 60, height: 0.8, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.screenheight,
    required this.screenwidth,
  }) : super(key: key);

  final double screenheight;
  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenheight * 0.1,
      width: screenwidth,
      child: Row(children: [
        Text(
          'nolade.',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
              fontFamily: GoogleFonts.openSans().fontFamily),
        ),
        Spacer(),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 5,
              ),
              //settings icon
              ImageIcon(
                AssetImage('lib/assets/setting.png'),
                size: 25,
              ),
              SizedBox(
                width: 15,
              ),
              //profile avatar
              CircleAvatar(
                radius: screenheight * 0.028,
                backgroundImage: AssetImage(
                  'lib/assets/profile.jpeg',
                ),
              ),
            ],
          ),
        ))
      ]),
    );
  }
}
