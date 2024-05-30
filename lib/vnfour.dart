import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:seen/loan.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
            children: [
              Text(
                'Verify',
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
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'Please enter the 6 digit one time\n code to activate your account!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    height: 1,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
              SizedBox(height: 40,),
              OtpTextField(
                borderRadius:BorderRadius.circular(10),
                numberOfFields: 6,
                borderColor:Colors.red,
                showFieldAsBox: true,
                onCodeChanged: (String code) {
                },
                onSubmit: (String verificationCode){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      }
                  );
                }, // end onSubmit
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Didn’t receive a Code?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text("Resend Code!",style: TextStyle(color: Color(0xFF1F1F1F),   fontSize: 17,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,decoration: TextDecoration.underline,height: 0.08,
                  letterSpacing: 0.06,),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen7()));
                },
                  child: Container(
                    width: 316,
                    height: 45.28,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFF0083),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.88),
                      ),
                    ),
                    child: Center(
                      child: Text(  'Verify',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFF2F2),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                          letterSpacing: 0.06,
                        ),),
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
