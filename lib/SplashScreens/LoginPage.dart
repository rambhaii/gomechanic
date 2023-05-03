import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gomechanic/Dashbord/HomePage.dart';
import 'package:gomechanic/SplashScreens/OtpVerify.dart';
import 'package:gomechanic/Widget/CircularButton.dart';

import '../TextStyle/textstyle.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 28,
                          color: const Color(0xff051ba6),
                          letterSpacing: 1.5,
                          height: 0.04,
                        ),
                        children: [
                          TextSpan(
                            text: 'Go ',
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'Mechanic',
                          ),
                        ],
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ],
                ),
              Row(
                children: [
                  Container(
                    height: 205.h,
                      width:320.w,
                      child:  Image.network("https://cdn.dribbble.com/users/207059/screenshots/1657"
                          "3456/media/1ed47de0b2ad5c4fe5903f6eb9387f57.gif",height: 100.h,width: 100.w,),),
                ],
              ),
                Text(
                  'Create an \n       Account',
                  style: smallTextStyle.copyWith(fontSize: 20.sp,color: Colors.blue,),

                ),
                SizedBox(height: 10.h,),
                Container(
                    width:Get.width,
                    child: Text("Enter your mobile number\n       with country code",style: smallTextStyle.copyWith(fontSize: 23),)),
                const  SizedBox(height: 50,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    Spacer(flex: 1,),
                    Expanded(flex:1,child: TextFormField(
                        readOnly: true,
                        initialValue: "+91",
                        style: titleStyle,
                        decoration:const InputDecoration(

                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),

                          isDense: true,


                        ),)),
                    SizedBox(width: 8,),
                    Expanded(flex:5,child: Form(
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            counter: Offstage(),
                            hintText: "0000000000",
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),

                          ),
                          validator: (value){
                            if(value.toString().isEmpty)
                            {
                              return "Please enter mobile No.";
                            }
                            if(value!.length!=10)
                            {
                              return "Please enter 10 digits mobile number";
                            }
                          },
                          maxLength: 10,
                           style: titleStyle,),
                    )),
                    SizedBox(width: 20.w,),
                    Expanded(flex: 2,child:CircularButton(onPress: ()
                    {
                      Get.to(()=>OtpVerify());

                    },), ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
