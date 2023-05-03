import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomechanic/Widget/EditTextWedget.dart';

import '../Dashbord/HomePage.dart';
import '../TextStyle/textstyle.dart';

class Registration extends StatefulWidget {
  Registration({
    Key? key
  }) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 0,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                      height: 70,
                      width: 70,
                      ),

                    const Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 28,
                          color: const Color(0xff051ba6),
                          letterSpacing: 1.25,
                          height: 0.04,
                        ),
                        children: [
                          TextSpan(
                            text: 'Go ',
                            style: TextStyle(
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
                Text(
                  'Create an Account',
                  style: titleStyle,

                ),
                Row(
                  children: [
                    Spacer(flex:2),
                    Expanded(
                        flex: 10,
                        child: Form(
                          child: Column(
                            children: [
                              SizedBox(height: 15,),
                              EditTextWidget(
                                 hint: 'Name',
                                validator: (value){
                                  if(value.toString().isEmpty)
                                  {
                                    return "Please Enter Name";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10,),
                              EditTextWidget(hint: 'Mobile',
                                type: TextInputType.phone,

                                validator: (value){
                                  if(value.toString().isEmpty)
                                  {
                                    return "Please enter mobile";
                                  }
                                  if(value.toString().length!=10)
                                  {
                                    return "Please enter 10 digit Number";
                                  }
                                  return null;
                                },
                                length: 10,
                              ),
                              SizedBox(height: 10,),
                              EditTextWidget(hint: 'Adhar Number',
                                type: TextInputType.phone,

                                validator: (value){
                                  if(value.toString().isEmpty)
                                  {
                                    return "Please enter Adhar Number";
                                  }
                                  if(value.toString().length!=12)
                                  {
                                    return "Please enter 10 digit Number";
                                  }
                                  return null;
                                },
                                length: 12,
                              ),
                              SizedBox(height: 10,),
                              EditTextWidget( hint: 'Email',
                                type: TextInputType.emailAddress,
                                validator: (value){
                                  if(value.toString().isEmpty)
                                  {
                                    return "Please Enter Email";
                                  }
                                  if(!GetUtils.isEmail(value))
                                  {
                                    return "Please Enter Valid Email";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10,),
                              EditTextWidget( hint: 'Block',
                                type: TextInputType.text,
                                validator: (value){
                                  if(value.toString().isEmpty)
                                  {
                                    return "Please enter block";
                                  }
                                  return null;
                                },


                              ),
                              SizedBox(height: 10,),
                              EditTextWidget( hint: 'Garage Name',
                                type: TextInputType.text,
                                validator: (value){
                                  if(value.toString().isEmpty)
                                  {
                                    return "Please enter Garage Name";
                                  }
                                  return null;
                                },


                              ),
                              SizedBox(height: 10,),
                              EditTextWidget( hint: 'Garage Side',
                                type: TextInputType.number,
                                validator: (value){
                                  if(value.toString().isEmpty)
                                  {
                                    return "Please Enter Garage Side";
                                  }
                                  if(value.toString().length!=6)
                                  {
                                    return "Please enter 6 digit pin";
                                  }
                                  return null;
                                },
                                length: 6,
                              ),
                              SizedBox(height: 10,),
                              EditTextWidget( hint: 'Garage Location',
                                type: TextInputType.number,
                                validator: (value){
                                  if(value.toString().isEmpty)
                                  {
                                    return "Please Enter  Location";
                                  }
                                  if(value.toString().length!=6)
                                  {
                                    return "Please enter 6 digit pin";
                                  }
                                  return null;
                                },
                                length: 6,
                              ),

                              SizedBox(height: 15,),
                              Container(
                                margin: EdgeInsets.only(right: 35),
                                alignment: Alignment.centerRight,
                                width: Get.width,
                                child: RawMaterialButton(onPressed: ()
                                {
                                  Get.to(()=>HomeDashboard());
                                },
                                  child: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
                                  fillColor: Colors.black,
                                  padding: EdgeInsets.all(8),
                                  shape: CircleBorder(),
                                  constraints: BoxConstraints(maxHeight: 54,maxWidth: 54),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),

                const SizedBox(height: 35,),
                Text.rich(
                  TextSpan(
                    style: smallTextStyle,
                    children: [
                      TextSpan(
                        text:
                        'By signing in or creating an account, you agree with our \n',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            height: 2,
                            letterSpacing: 0.2
                        ),
                      ),
                      TextSpan(
                        text: 'Term and conditions',
                        style: TextStyle(
                          color: const Color(0xff006eff),
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: const Color(0xff006eff),
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: const Color(0xff006eff),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

