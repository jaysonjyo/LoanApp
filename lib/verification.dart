import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seen/vntwo.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    width: 200, height: 200, child: Image.asset("assets/e.png")),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Add your mobile number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                    letterSpacing: 0.06,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    'We’ll need to confirm it by sending a text.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 0.11,
                      letterSpacing: 0.06,
                    ),
                  ),
                ),
               Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 40),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:  const BorderSide(color: Colors.teal),borderRadius: BorderRadius.circular(30)
                        ),
                        labelText: 'Mobile Number',
                        hintText: '+ (___)'),
                  ),
                ),
                const SizedBox(height: 40,),
                TextButton(
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen4())); },
                  child: Container( width: 316,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(color:Color(0xFFFF0083),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),),
                    child: const Center(
                      child: Text( 'Proceed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFF2F2),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                          letterSpacing: 0.06,
                        ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
