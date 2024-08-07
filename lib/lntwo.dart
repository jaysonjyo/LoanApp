import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:seen/loan.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF0083),
        // automaticallyImplyLeading: false,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0.06,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 350,
            decoration: ShapeDecoration(
                color: Color(0xFFFF0083), shape: RoundedRectangleBorder()),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Good afternoon,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Jacquie!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30, top: 35),
                    child: Stack(
                      children: [
                        Container(
                          width: 330,
                          height: 140,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 230),
                          child: SizedBox(
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    "assets/f.png",
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 85),
                          child: SizedBox(
                              width: 100,
                              height: 55,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    "assets/g.png",
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17, left: 15),
                          child: Row(
                            children: [
                              Text(
                                ' Loan Balance',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                width: 170,
                              ),
                              Text(
                                '50%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 10),
                          child: Row(
                            children: [
                              Text(
                                '\$3,000.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0.09,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  'of \$10,050.00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Text(
                                '39 days left',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 75),
                          child: LinearPercentIndicator(
                            width: 300,
                            lineHeight: 5,
                            percent: 0.5,
                            backgroundColor: Colors.grey,
                            progressColor: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 95, left: 190),
                          child: Row(
                            children: [
                              Text(
                                'Request for Loan',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0.12,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (BuildContext context) {
                                        return DefaultTabController(
                                          length: 2,
                                          child: SingleChildScrollView(
                                            child: SizedBox(
                                              height: 500,
                                              width: 500,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, top: 20),
                                                child: Column(
                                                  children: [
                                                Row(
                                                children: [
                                                Text(
                                                "Repay Loan",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily:
                                                      "Poppins",
                                                      fontWeight:
                                                      FontWeight
                                                          .w700),),
                                                SizedBox(
                                                  width: 215,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pop();
                                                  },
                                                  child: Icon(
                                                    Icons.close,
                                                    size: 30,),)],),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    top: 20,right: 18),
                                                child: Column(
                                                  children: [
                                                    Container(width: 350, height: 50, decoration: ShapeDecoration(color: Colors.white,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(30)),),
                                                      child: TabBar(indicatorSize: TabBarIndicatorSize.tab, dividerHeight: 0, indicator:
                                                        BoxDecoration(color: Color(0xFFFF0083), borderRadius: BorderRadius.circular(30),), labelColor: Colors.white, dividerColor: Colors.white,
                                                        tabs: [Tab(
                                                          child: Text(
                                                            "Full Repayment", style: TextStyle(fontSize: 20,
                                                              fontFamily: "Raleway",
                                                              fontWeight: FontWeight.w700,),),),
                                                          Tab(
                                                            child: Text(
                                                              "Partial Repayment", style: TextStyle(
                                                                fontSize: 20,
                                                                fontFamily: "Raleway",
                                                                fontWeight: FontWeight.w700,),),),],),),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                      child: Text(
                                                        " Repay your loan today and take another one \n                         immediately.",
                                                        style: TextStyle(
                                                            color:
                                                            Color(0xFF959595),
                                                            fontSize: 19,
                                                            fontFamily: 'Poppins',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            height: 1.5),
                                                      ),),
                                                  ],),),
                                              Expanded(child: TabBarView(children:
                                                [Container(
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 70),
                                                  child: Text(
                                                  "You currently owe",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 22,
                                                      fontFamily: "poppins",
                                                      fontWeight:
                                                      FontWeight.w700,
                                                      height: 1),
                                                                                              ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 10),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(
                                                          top: 6,
                                                        ),
                                                        child: Text(
                                                          '\$ ',
                                                          style: TextStyle(
                                                            color:
                                                            Colors.black,
                                                            fontSize: 20,
                                                            fontFamily:
                                                            'Poppins',
                                                            fontWeight:
                                                            FontWeight
                                                                .w600,
                                                            height: 0.08,
                                                            letterSpacing:
                                                            0.04,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "10,050.00",
                                                        style: TextStyle(
                                                            color:
                                                            Colors.black,
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            fontFamily:
                                                            "poppins",
                                                            fontSize: 35),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      top: 10,left: 50),
                                                  child: TextButton(
                                                    onPressed: () {
                                                      showModalBottomSheet(
                                                          context: context,
                                                          isScrollControlled:
                                                          true,
                                                          builder:
                                                              (BuildContext
                                                          context) {
                                                            return SizedBox(
                                                                height: 600,
                                                                width: 500,
                                                                child:
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      top:
                                                                      50),
                                                                  child: Column(
                                                                      children: [
                                                                        Text(
                                                                          " That was way to easy!",
                                                                          style:
                                                                          TextStyle(
                                                                            color: Colors
                                                                                .black,
                                                                            fontSize: 18,
                                                                            fontWeight: FontWeight
                                                                                .w600,
                                                                            fontFamily: "Poppins",
                                                                            height: 0.08,
                                                                            letterSpacing: 0.5,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                          const EdgeInsets
                                                                              .only(
                                                                              bottom: 25,
                                                                              top: 20),
                                                                          child:
                                                                          Text(
                                                                            'Congratulations!',
                                                                            textAlign: TextAlign
                                                                                .center,
                                                                            style: TextStyle(
                                                                              color: Color(
                                                                                  0xFF1F1F1F),
                                                                              fontSize: 40,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight
                                                                                  .w700,
                                                                              height: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                          const EdgeInsets
                                                                              .only(
                                                                              bottom: 10),
                                                                          child:
                                                                          CircleAvatar(
                                                                            backgroundColor: Colors
                                                                                .green
                                                                                .shade100,
                                                                            radius: 60,
                                                                            child: Icon(
                                                                              Icons
                                                                                  .done,
                                                                              size: 50,
                                                                              color: Colors
                                                                                  .green,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                          const EdgeInsets
                                                                              .only(
                                                                              bottom: 30,
                                                                              top: 20),
                                                                          child:
                                                                          Text(
                                                                            'Transaction Summary',
                                                                            textAlign: TextAlign
                                                                                .center,
                                                                            style: TextStyle(
                                                                              color: Color(
                                                                                  0xFF1F1F1F),
                                                                              fontSize: 28,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight
                                                                                  .w700,
                                                                              height: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          '\$ 10,050.00 ',
                                                                          textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                          style:
                                                                          TextStyle(
                                                                            color: Color(
                                                                                0xFF1F1F1F),
                                                                            fontSize: 34,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight
                                                                                .w700,
                                                                            height: 0,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                          const EdgeInsets
                                                                              .only(
                                                                              top: 20),
                                                                          child:
                                                                          Text(
                                                                            'Your Loan has been fully\nPaid',
                                                                            textAlign: TextAlign
                                                                                .center,
                                                                            style: TextStyle(
                                                                                color: Color(
                                                                                    0xFF1F1F1F),
                                                                                fontSize: 18,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight
                                                                                    .w700,
                                                                                height: 0,
                                                                                letterSpacing: 0.10),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                          const EdgeInsets
                                                                              .only(
                                                                              top: 30),
                                                                          child:
                                                                          TextButton(
                                                                            onPressed: () {
                                                                              Navigator
                                                                                  .of(
                                                                                  context)
                                                                                  .pushAndRemoveUntil(
                                                                                  MaterialPageRoute(
                                                                                      builder: (
                                                                                          context) =>
                                                                                          Screen7()), (
                                                                                  route) => false);
                                                                            },
                                                                            child: Container(
                                                                              width: 300,
                                                                              height: 50,
                                                                              decoration: ShapeDecoration(
                                                                                  color: Color(
                                                                                      0xFFFF0083),
                                                                                  shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius
                                                                                          .circular(
                                                                                          30))),
                                                                              child: Center(
                                                                                child: Text(
                                                                                  'Okay',
                                                                                  textAlign: TextAlign
                                                                                      .center,
                                                                                  style: TextStyle(
                                                                                    color: Color(
                                                                                        0xFFFFF2F2),
                                                                                    fontSize: 25,
                                                                                    fontFamily: 'Poppins',
                                                                                    fontWeight: FontWeight
                                                                                        .w600,
                                                                                    height: 0.07,
                                                                                    letterSpacing: 0.06,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        )
                                                                      ]),
                                                                ));
                                                          });
                                                    },
                                                    child: Container(
                                                      width: 230,
                                                      height: 50,
                                                      decoration:
                                                      ShapeDecoration(
                                                        color:
                                                        Color(0xFFFF0083),
                                                        shape:
                                                        RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              30),
                                                        ),
                                                      ),
                                                      child: Center(
                                                          child: Text(
                                                            "Continue",
                                                            style: TextStyle(
                                                                color:
                                                                Colors.white,
                                                                fontSize: 25,
                                                                fontFamily:
                                                                "poppins",
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                          )),
                                                    ),
                                                  ),
                                                ),
                                                ],
                                              ),
                                            
                                            ),
                                            Container(
                                              child:
                                              Padding(
                                                padding: const EdgeInsets.only(top: 50),
                                                child: Column(
                                                  children: [
                                                    SizedBox(width: 300,height: 60,
                                                      child: TextField(
                                                        decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors.teal),
                                                              borderRadius: BorderRadius
                                                                  .circular(30)
                                                          ), labelText: 'Mobile Number'
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          top: 30),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          showModalBottomSheet(
                                                              context: context,
                                                              isScrollControlled:
                                                              true,
                                                              builder:
                                                                  (BuildContext
                                                              context) {
                                                                return SizedBox(
                                                                    height: 600,
                                                                    width: 500,
                                                                    child:
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                          50),
                                                                      child: Column(
                                                                          children: [
                                                                            Text(
                                                                              " That was way to easy!",
                                                                              style:
                                                                              TextStyle(
                                                                                color: Colors
                                                                                    .black,
                                                                                fontSize: 18,
                                                                                fontWeight: FontWeight
                                                                                    .w600,
                                                                                fontFamily: "Poppins",
                                                                                height: 0.08,
                                                                                letterSpacing: 0.5,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding:
                                                                              const EdgeInsets
                                                                                  .only(
                                                                                  bottom: 25,
                                                                                  top: 20),
                                                                              child:
                                                                              Text(
                                                                                'Congratulations!',
                                                                                textAlign: TextAlign
                                                                                    .center,
                                                                                style: TextStyle(
                                                                                  color: Color(
                                                                                      0xFF1F1F1F),
                                                                                  fontSize: 40,
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight
                                                                                      .w700,
                                                                                  height: 0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding:
                                                                              const EdgeInsets
                                                                                  .only(
                                                                                  bottom: 10),
                                                                              child:
                                                                              CircleAvatar(
                                                                                backgroundColor: Colors
                                                                                    .green
                                                                                    .shade100,
                                                                                radius: 60,
                                                                                child: Icon(
                                                                                  Icons
                                                                                      .done,
                                                                                  size: 50,
                                                                                  color: Colors
                                                                                      .green,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding:
                                                                              const EdgeInsets
                                                                                  .only(
                                                                                  bottom: 30,
                                                                                  top: 20),
                                                                              child:
                                                                              Text(
                                                                                'Transaction Summary',
                                                                                textAlign: TextAlign
                                                                                    .center,
                                                                                style: TextStyle(
                                                                                  color: Color(
                                                                                      0xFF1F1F1F),
                                                                                  fontSize: 28,
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight
                                                                                      .w700,
                                                                                  height: 0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              '\$ 10,050.00 ',
                                                                              textAlign:
                                                                              TextAlign
                                                                                  .center,
                                                                              style:
                                                                              TextStyle(
                                                                                color: Color(
                                                                                    0xFF1F1F1F),
                                                                                fontSize: 34,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight
                                                                                    .w700,
                                                                                height: 0,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding:
                                                                              const EdgeInsets
                                                                                  .only(
                                                                                  top: 20),
                                                                              child:
                                                                              Text(
                                                                                'Your Loan has been fully\nPaid',
                                                                                textAlign: TextAlign
                                                                                    .center,
                                                                                style: TextStyle(
                                                                                    color: Color(
                                                                                        0xFF1F1F1F),
                                                                                    fontSize: 18,
                                                                                    fontFamily: 'Poppins',
                                                                                    fontWeight: FontWeight
                                                                                        .w700,
                                                                                    height: 0,
                                                                                    letterSpacing: 0.10),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding:
                                                                              const EdgeInsets
                                                                                  .only(
                                                                                  top: 30),
                                                                              child:
                                                                              TextButton(
                                                                                onPressed: () {
                                                                                  Navigator
                                                                                      .of(
                                                                                      context)
                                                                                      .pushAndRemoveUntil(
                                                                                      MaterialPageRoute(
                                                                                          builder: (
                                                                                              context) =>
                                                                                              Screen7()), (
                                                                                      route) => false);
                                                                                },
                                                                                child: Container(
                                                                                  width: 300,
                                                                                  height: 50,
                                                                                  decoration: ShapeDecoration(
                                                                                      color: Color(
                                                                                          0xFFFF0083),
                                                                                      shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius
                                                                                              .circular(
                                                                                              30))),
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      'Okay',
                                                                                      textAlign: TextAlign
                                                                                          .center,
                                                                                      style: TextStyle(
                                                                                        color: Color(
                                                                                            0xFFFFF2F2),
                                                                                        fontSize: 25,
                                                                                        fontFamily: 'Poppins',
                                                                                        fontWeight: FontWeight
                                                                                            .w600,
                                                                                        height: 0.07,
                                                                                        letterSpacing: 0.06,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ]),
                                                                    ));
                                                              });
                                                        },
                                                        child: Container(
                                                          width: 230,
                                                          height: 50,
                                                          decoration:
                                                          ShapeDecoration(
                                                            color:
                                                            Color(0xFFFF0083),
                                                            shape:
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  30),
                                                            ),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                                "Continue",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 25,
                                                                    fontFamily:
                                                                    "poppins",
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                              )),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            
                                            ),
                                                                                    ],),
                                                                                    ),
                                            
                                                                                    ] ),
                                                                                    ),
                                                                                    ),
                                          )
                                        ,


                                        );
                                      });
                                },
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFFFF0083),
                                  radius: 15,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300,),
            child: Container(
              width: 400,
              height: 480,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            'Transactions',
                            style: TextStyle(
                              color: Color(0xFF242424),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0.08,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 35,
                          ),
                          child: Text(
                            'Mini-Statement',
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                            'Loan Disbursement',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                        Text(
                          '2022-09-12',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 2,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Withdraw to Bank',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                        Text(
                          '2022-09-12',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 2,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Loan Repayment',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                        Text(
                          '2022-09-12',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 2,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Loan Repayment Fees',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                        Text(
                          '2022-09-12',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, top: 25),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xFFFF0083),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 70,
                          ),
                          child: Text(
                            '\$10,050.00',
                            style: TextStyle(
                              color: Color(0xFF53D258),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45, right: 5),
                          child: Text(
                            '-\$10,050.00',
                            style: TextStyle(
                              color: Color(0xFFE25C5C),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 10),
                          child: Text(
                            '\$3,000.00',
                            style: TextStyle(
                              color: Color(0xFF53D258),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 25),
                          child: Text(
                            '-\$32.00',
                            style: TextStyle(
                              color: Color(0xFFE25C5C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFFFF0083),
          ),
          child: null,
        ),
      ),
    );
  }
}
