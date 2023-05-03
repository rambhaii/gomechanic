import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomechanic/SplashScreens/Registration.dart';
import 'package:gomechanic/TextStyle/textstyle.dart';
import 'package:gomechanic/Widget/CoustomButton.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../Widget/Arrowtitle.dart';
class OtpVerify extends StatelessWidget {
  OtpVerify({Key? key,}) : super(key: key);
  String etotp="";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              const  SizedBox(height: 40,),
              Padding(
                padding:  EdgeInsets.only(left: 8.0),
                child:  ArrowTitleBar(title: "Verify",),
              ),
              const  SizedBox(height: 40,),
              Text("Enter the verification code we just sent\nyou on your",
                style: smallTextStyle,textAlign: TextAlign.center,),
              const  SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text("Code ",style: titleStyle.copyWith(fontSize: 18,color: Colors.black38),textAlign: TextAlign.center,),
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    child: OTPTextField(
                      length: 4,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 30,
                      style:const TextStyle(
                          fontSize: 17,fontWeight: FontWeight.bold
                      ),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                    ),
                  ),

                ],
              ),
              Container(
                  margin: EdgeInsets.only(top:50,right: 15,bottom: 50),
                  width:Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("20s",style: smallTextStyle),
                      Text("Resend Code?",style: titleStyle.copyWith(fontSize: 16,decoration: TextDecoration.underline,color: Colors.blue),)
                    ],
                  ),
                  ),

              CustomButton(onPress: (){
              Get.to(()=>Registration());
              },title: "Verify Code",)
            ],
          ),
        ),
      ),
    );
  }
}
