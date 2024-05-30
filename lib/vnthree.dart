import 'package:flutter/material.dart';
import 'package:seen/vnfour.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Text(
                'How you’ll log in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1F1F1F),
                  fontSize: 29,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.03,
                  letterSpacing: 0.06,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Make sure you keep it as secure as\n possible!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    height: 1,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,right: 20,left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Mobile Number',
                      hintText: '+ (___)'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 35),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.circular(30)),
                      labelText: AutofillHints.password,
                      hintText: "*"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen6()));
                },
                  child: Container(
                    width: 316,
                    height:50,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFF0083),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.88),
                      ),
                    ),
                    child: Center(
                      child: Text(  'Proceed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFF2F2),
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                          letterSpacing: 0.06,
                        ),),
                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37),
                child: Row(
                  children: [
                    Checkbox(
                      value: ischecked,
                      onChanged: ( value) {
                        setState(() {
                        ischecked=!ischecked;
                        });
                      },
                    ),
                    Text("I agree to the Terms & Conditions  and Policy",  style: TextStyle(
                      color: Color(0xFFFF0083),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.16,
                      letterSpacing: 0.03,
                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
