import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

class Atm extends StatefulWidget {
  @override
  State<Atm> createState() => _AtmState();
}

class _AtmState extends State<Atm> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  double _currentSliderValue = 20;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  dynamic cardcolor = const Color(0xFF9EBC1E);
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: 7.0,
      width: isActive ? 30.0 : 7.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.purple.withOpacity(0.4),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          // pad 40 v
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: const EdgeInsets.all(10),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                      SizedBox(width: 50),
                      Text(
                        'Translate',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 300,
                    // width: 100,
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: [
                        buildCard('assets/visa.png', 'Salary Card', '10,000\$',
                            '.... .... .... 3040'),
                        buildCard('assets/visa.png', 'Card 2', '20,000\$',
                            '.... .... .... 5060'),
                        buildCard('assets/visa.png', 'Card 3', '30,000\$',
                            '.... .... .... 7080'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Form(
                          child: Column(children: [
                            TextFormField(
                              keyboardType: TextInputType.number,
                              // inputFormatters: [
                              //   FilteringTextInputFormatter.digitsOnly,
                              //   LengthLimitingTextInputFormatter(4),
                              // ],
                              // this shows how many number it can contain i.e 4 number
                              //depending on the number you want ,

                              decoration: InputDecoration(
                                // hintText: 'Aleksandr',
                                label: Text('Aleksandr'),
                                fillColor: Colors.white,
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                              ),
                            ),

                            // prefixIcon: Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Icon(
                            //     Icons.baby_changing_station_outlined,
                            // ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  // hintText: 'Sum',
                                  label: Text('Sum'),
                                ),
                              ),
                            ),
                            // Text('sd'),
                          ]),
                        ),
                        // SizedBox(
                        //   height: 0.5,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Commission is not charged by the bank',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Form(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              // hintText: 'Message to the recipient',
                              label: Text('Message to the recipient'),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 16),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              // flex: 25,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    minimumSize:
                                        const Size(double.infinity, 56),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                  ),
                                  child: Text(
                                    'Transfer 100\$',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Container(
                        //   height: 50,
                        //   width: 50,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30),
                        //     shape: BoxShape.rectangle,
                        //   ),
                        //   child: Text('dg'),
                        // ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
      String imagePath, String cardName, String balance, String cardNumber) {
    child:
    // Text('GODjj');
    return Container(
      margin: EdgeInsets.all(20),
      // padding: EdgeInsets.symmetric(vertical: 5),
      // 30
      // constraints: const BoxConstraints(maxWidth: 220),
      //  maxwidth  //  360
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        color: Color.fromRGBO(24, 31, 225, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// Row(children: [],)
            // Text('God'),
            // Text('God'),
            // SizedBox(height: 20),

            Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              // height: 239.8,
              // width: 351.3,
              height: 259,
              width: 400,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 150,
                    bottom: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32),
                          topLeft: Radius.circular(300),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 25,
                    right: 230,
                    bottom: 0,
                    left: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          cardName,
                          style: TextStyle(
                              color: Color.fromARGB(135, 255, 255, 255),
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          balance,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Positioned(
                    top: 70,
                    right: 0,
                    bottom: 0,
                    left: 316,
                    //  270,../.
                    child: Row(
                      children: [
                        Text(
                          '../..',
                          style: TextStyle(
                              color: Color.fromARGB(174, 255, 255, 255),
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 200,
                    right: 100,
                    bottom: 0,
                    left: 28,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          imagePath,
                          color: Color.fromARGB(91, 255, 255, 255),
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 200,
                    right: 0,
                    bottom: 0,
                    left: 240,
                    // 200 (5060)
                    child: Row(
                      children: [
                        Text(
                          cardNumber,
                          style: TextStyle(
                              color: Color.fromARGB(174, 255, 255, 255),
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 60,
                  // ),
                ],
              ),
            ),
          ]),
      // ),
      // ),
    );

    // ]);
  }
}
