import 'package:flutter/material.dart';
import 'package:seen/verification.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(children: [
            const Text( 'Pay Fast',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0.05,
            ),
          ),
            const Padding(
              padding: EdgeInsets.only(top:45),
              child: Text( 'Forget Everything \nYou Know About\nBanking',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                ),),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset("assets/a.png"),
            ),



          Padding(
            padding: const EdgeInsets.only(top:30 ),
            child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen3()));
              },
              child: Container(
              width: 220,
              height: 46,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(color: Color(0xFFFF0083),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
                child: const Center(
                  child: Text( 'Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                      letterSpacing: 0.06,
                    ),),
                ),
              ),
            ),
          ),
            const SizedBox(height: 25,),
            Container(
              width: 220,
              height: 46,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(color: Color(0xFFFF0083),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                    letterSpacing: 0.06,
                  ),),
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
