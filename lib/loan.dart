

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';
import 'package:seen/lntwo.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  bool ischecked = false;
  RangeValues value = RangeValues(0, 100);

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
            child: Column(children: [
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
                            'Loan Limit',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0.09,
                            ),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Text(
                            '100%',
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
                      padding: const EdgeInsets.only(top: 50, left: 15),
                      child: Row(
                        children: [
                          Text(
                            '\$10,000.00',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                            ),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Text(
                            'Request for \$5,500.00',
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
                        widgetIndicator: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 7,
                        ),
                        width: 300,
                        lineHeight: 5,
                        percent: 0.2,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90, left: 185),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextButton(
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          void Function(void Function())
                                              setState) {
                                        return SingleChildScrollView(
                                          child: SizedBox(
                                            height: 600,
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 120, top: 40),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      " How long do you want the loan for?",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily: "Poppins",
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0.08,
                                                        letterSpacing: 0.04,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 40),
                                                      child: Text(
                                                        '2 Months',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF1F1F1F),
                                                          fontSize: 30,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 400,
                                                      height: 40,
                                                      child: RangeSlider(
                                                        activeColor:
                                                            Color(0xFFFF0083),
                                                        min: 0,
                                                        max: 100,
                                                        values: value,
                                                        labels: RangeLabels(
                                                          value.start.round()
                                                              .toString(),
                                                          value.end.round().toString(),
                                                        ),
                                                        divisions: 100,
                                                        onChanged: (newValue)
                                                             {
                                                               if(value.start !=newValue.start)return;
                                                               setState((){
                                                                 value=newValue;
                                                               });
                                                             },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 30),
                                                      child: Container(
                                                        width: 350,
                                                        height: 90,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .white),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 35,
                                                                  top: 15),
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(),
                                                                child: Column(
                                                                  children: [
                                                                    Text(
                                                                      'Monthly \nPayment',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            18,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        height:
                                                                            1,
                                                                        letterSpacing:
                                                                            0.03,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              5),
                                                                      child:
                                                                          Text(
                                                                        'NIL',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Color(0xFFC4C4C4),
                                                                          fontSize:
                                                                              29,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                          height:
                                                                              0,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 50,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    'No of\nPayments',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          18,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: 1,
                                                                      letterSpacing:
                                                                          0.03,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top: 5),
                                                                    child: Text(
                                                                      'NIL',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFFC4C4C4),
                                                                        fontSize:
                                                                            29,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        height:
                                                                            0,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 50,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    'Total \nPayback',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          18,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: 1,
                                                                      letterSpacing:
                                                                          0.03,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top: 5),
                                                                    child: Text(
                                                                      'NIL',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFFC4C4C4),
                                                                        fontSize:
                                                                            29,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        height:
                                                                            0,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 30,
                                                              left: 50),
                                                      child: Row(
                                                        children: [
                                                          Checkbox(
                                                            value: ischecked,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                ischecked =
                                                                    !ischecked;
                                                              });
                                                            },
                                                          ),
                                                          Text(
                                                            'I agree to the '
                                                            'Terms & Conditions'
                                                            ' and '
                                                            'Policy.',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.16,
                                                              letterSpacing:
                                                                  0.03,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        showModalBottomSheet<
                                                            void>(
                                                          context: context,
                                                          isScrollControlled:
                                                              true,
                                                          builder:
                                                              (BuildContextcontext) {
                                                            return SizedBox(
                                                              height: 760,
                                                              child: Center(
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <Widget>[
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          bottom:
                                                                              15),
                                                                      child:
                                                                          Text(
                                                                        " That was way to easy!",
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontFamily:
                                                                              "Poppins",
                                                                          height:
                                                                              0.08,
                                                                          letterSpacing:
                                                                              0.5,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          bottom:
                                                                              35),
                                                                      child:
                                                                          Text(
                                                                        'Congratulations!',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Color(0xFF1F1F1F),
                                                                          fontSize:
                                                                              40,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          height:
                                                                              0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          bottom:
                                                                              10),
                                                                      child:
                                                                          CircleAvatar(
                                                                        backgroundColor: Colors
                                                                            .green
                                                                            .shade100,
                                                                        radius:
                                                                            60,
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          size:
                                                                              50,
                                                                          color:
                                                                              Colors.green,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          bottom:
                                                                              30),
                                                                      child:
                                                                          Text(
                                                                        'Transaction Summary',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Color(0xFF1F1F1F),
                                                                          fontSize:
                                                                              28,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          height:
                                                                              0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          360,
                                                                      height:
                                                                          200,
                                                                      decoration: ShapeDecoration(
                                                                          color: Colors
                                                                              .white60,
                                                                          shape:
                                                                              RoundedRectangleBorder()),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            left:
                                                                                10),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              'Next Repayment Date: \nInterest Rate:\nMonthly Repayment:\nNo of Payments:\nReason\nTotal Payback Amount:',
                                                                              style: TextStyle(
                                                                                color: Color(0xFF7F8790),
                                                                                fontSize: 20,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w300,
                                                                                height: 2,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 55,
                                                                            ),
                                                                            Text(
                                                                              '02/04/2023\n10 %\n\$5,000.00\n2\nEmergency Bills\n\$ 10,050.00',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 20,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w300,
                                                                                height: 2,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          50,
                                                                    ),
                                                                    TextButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.of(context).push(MaterialPageRoute(
                                                                            builder: (_) =>
                                                                                Screen8()));
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            316,
                                                                        height:
                                                                            60,
                                                                        decoration:
                                                                            ShapeDecoration(
                                                                          color:
                                                                              Color(0xFFFF0083),
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(30),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Text(
                                                                            'Accept',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFFFFF2F2),
                                                                              fontSize: 20,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600,
                                                                              height: 0.07,
                                                                              letterSpacing: 0.06,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              20),
                                                                      child:
                                                                          TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.of(context).pushAndRemoveUntil(
                                                                              MaterialPageRoute(builder: (context) => Screen7()),
                                                                              (route) => false);
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              316,
                                                                          height:
                                                                              60,
                                                                          decoration:
                                                                              ShapeDecoration(
                                                                            color:
                                                                                Colors.black,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(30),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              'Decline',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFFFFF2F2),
                                                                                fontSize: 20,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 0.07,
                                                                                letterSpacing: 0.06,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 316,
                                                        height: 60,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color:
                                                              Color(0xFFFF0083),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7.88),
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Apply Now',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFFFF2F2),
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.06,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 310),
            child: Container(
              width: 400,
              height: 510,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'How do you want to use your limit?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                        letterSpacing: 0.04,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 315,
                        height: 70,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 80,
                                offset: Offset(10, 10),
                                spreadRadius: 1,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset("assets/h.png")),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Emergency Bills',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: 0.04,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 120),
                                child: Container(
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                                width: 1,
                                                color: Colors.black12))),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                        color: Colors.black45,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 315,
                        height: 70,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 80,
                                offset: Offset(10, 10),
                                spreadRadius: 1,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset("assets/h.png")),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Food and Shopping',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: 0.04,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 105),
                                child: Container(
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                                width: 1,
                                                color: Colors.black12))),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                        color: Colors.black45,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 315,
                        height: 70,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 80,
                                offset: Offset(10, 10),
                                spreadRadius: 1,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset("assets/h.png")),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Others',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: 0.04,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 170),
                                child: Container(
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                                width: 1,
                                                color: Colors.black12))),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                        color: Colors.black45,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
