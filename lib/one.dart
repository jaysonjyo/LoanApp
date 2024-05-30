import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:seen/two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<String> img = ["assets/a.png", "assets/b.png", "assets/c.png"];
  List<String> text = [
    'Send Money',
    'Pay Bills',
    'Pay Merchants',
  ];
  List<String> textone = [
    'Send money to all networks and banks \n right from your Pay\n Fastaccount.',
    'Pay Bills such as Electricity, Water bill, TV \nsubscriptions etc. \nBuy airtime & Bundles.',
    'Even with insufficient balance, Pay by\n Phone at Merchants with Pay Fast\nAccounts.',
  ];
  int curentIndex=0;
  final CarouselController _controller=CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          CarouselSlider.builder(
            itemCount: img.length,carouselController: _controller,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    SingleChildScrollView(
                      child: Column(
                                    children: [
                                      Image.asset(
                                                        img[itemIndex],
                                                        fit: BoxFit.cover,
                                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        text[itemIndex],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.07,
                      letterSpacing: 0.06,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 28),
                                        child: Text(
                      textone[itemIndex],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 1,
                        letterSpacing: 0.06,
                      ),
                                        ),
                                      )
                                    ],
                                  ),
                    ),
            options: CarouselOptions(
              height: 500,
              viewportFraction: 1,
              initialPage: -1,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,onPageChanged: (index,reason){
                setState(() {
                  curentIndex=index;
                });
            },
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AnimatedSmoothIndicator(activeIndex:curentIndex,
            count:img.length,effect:WormEffect(),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: TextButton(onPressed: (){
              if(curentIndex==2){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2()));

              }else{
                _controller.nextPage();
              }
            },
              child: Container(
                width: 220,
                height: 46,
                decoration: ShapeDecoration(
                    color: Color(0xFFFF0083),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Center(
                  child: Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF2F2),
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                      letterSpacing: 0.06,
                    ),
                  ),
                )
                ,),
            ),
          )
        ]),
      ),
    );
  }
}
