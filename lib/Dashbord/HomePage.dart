import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gomechanic/SplashScreens/SplashPage.dart';
import 'package:gomechanic/TextStyle/textstyle.dart';
class HomeDashboard extends StatefulWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();

}
class _HomeDashboardState extends State<HomeDashboard> {
  RxBool _isLightTheme = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF435BE7),
      title: Text("Go Mechanic",style:bodyText1Style.copyWith(fontSize: 19.sp,color: Colors.white),),
      actions: [
        ObxValue(
              (data) => Switch(
                activeTrackColor: Colors.white,
               activeColor: Colors.greenAccent,
               value: _isLightTheme.value,
              onChanged: (val) {
              _isLightTheme.value = val;
              Get.changeThemeMode(
                _isLightTheme.value ? ThemeMode.dark : ThemeMode.system,
              );
            },
          ),
          false.obs,
        ),
      ],
      ),
      body: Column(
        children: [
          Container(
            height: 30.h,
            width: Get.width,
            color: Color(0xFF6A93EC),
            child: Row(
              children: [
                InkWell(
                 onTap: (){},
                 child: Icon(Icons.account_circle_outlined,color:Colors.white,size: 33.sp,)),
                Text(" 02389786756",style:bodyText1Style.copyWith(color: Colors.white,fontSize: 18.sp),),
                Spacer(),
                InkWell(
                  onTap: (){},
                  child: Icon(Icons.house_outlined,size: 33.sp,color: Colors.white,),
                ),
                Text(" 9696",style:bodyText1Style.copyWith(color: Colors.white,fontSize: 18.sp),)
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: ListView.builder(
                  itemCount: 100,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      height: 60.h,
                      width: Get.width,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.w,right: 8.w),
                        child: Row(
                          children: [
                            Container(
                              height: 55.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15.r)
                              ),
                              child: Center(child: Text("Map View")),
                            ),
                            Text("   Order ID  "),
                            SizedBox(width: 20.w,),
                            Container(
                              height: 55.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(50.r)
                              ),
                              child: Center(child: Text("Order ID",style: smallTextStyle,)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Colors.grey,),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 240.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(5),
                            border: Border.all(color: Color(0xFFDBDBDC))
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:20.h, ),
                              child: Row(
                                children: [
                                  Image(image:AssetImage("assets/images/send.png"),height: 20.h,color: Colors.blue,),
                                  Text(" Navigate",style: bodyText2Style.copyWith(color: Colors.blue),),
                                  SizedBox(width: 13.w,),
                                  Image(image:AssetImage("assets/images/info.png"),height: 20.h,color: Colors.greenAccent,),
                                  Text(" info",style: bodyText2Style.copyWith(color: Colors.blue),),
                                  SizedBox(width: 13.w,),
                                  Image(image:AssetImage("assets/images/reject1.png"),height: 20.h,color: Colors.red,),
                                  Text(" Reject",style: bodyText2Style.copyWith(color: Colors.blue),),
                                  SizedBox(width: 13.w,),
                                  Image(image:AssetImage("assets/images/call.png"),height: 20.h,color: Colors.greenAccent,),
                                  Text(" Call",style: bodyText2Style.copyWith(color: Colors.blue),),
                                  SizedBox(width: 13.w,)
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Container(
                              height: 40.h,
                              width: Get.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Order No :",style: smallTextStyle.copyWith(color: Colors.greenAccent),),
                                  Text("873478656",style: bodyText3Style,),
                                ],
                              ),
                            ),
                            Container(
                              height: 70.h,
                              width: Get.width,
                              child:Row(
                                children: [
                                  Container(
                                    height: 70.h,
                                    width: Get.width/2.1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("MJP/ UJP :",style: bodyText2Style.copyWith(color: Colors.greenAccent),),
                                        Text("Lucknow post offices with pincode. S.No. Post office, Office"
                                            " type, Pincode. 1. 32 Bn PAC, S.O, 226023. 2. A N L Colony, S.O, 226004.",style: smallTextStyle,maxLines: 3,)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 70.h,
                                    width: Get.width/2.2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("Area :",style:bodyText2Style.copyWith(color: Colors.greenAccent),),
                                          Text("70DD65",style: smallTextStyle,)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          )
        ],
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width/1.3,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
               DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 90.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/images/pro3.jpg"),fit: BoxFit.fill
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          width: Get.width/2.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jacqueline Fernandez",style: smallTextStyle.copyWith(fontSize: 20.sp,
                                  color: Colors.white),overflow: TextOverflow.ellipsis,maxLines: 2,),
                              Text("Jacqueline143@gmail.com",style:smallTextStyle.copyWith(color:Colors.black),
                                overflow: TextOverflow.ellipsis,maxLines: 2,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.person,size: 30.sp,)),
                        Text("Profile",style: smallTextStyle.copyWith(fontSize:22.sp),),
                        Spacer(),
                        Icon(Icons.play_arrow,color: Colors.grey,)
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.notification_add,size: 30.sp,)),
                        Text("Notification",style: smallTextStyle.copyWith(fontSize:22.sp),),
                        Spacer(),
                        Icon(Icons.play_arrow,color: Colors.grey,)
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.agriculture_outlined,size: 30.sp,)),
                        Text("Sale",style: smallTextStyle.copyWith(fontSize:22.sp),),
                        Spacer(),
                        Icon(Icons.play_arrow,color: Colors.grey,)
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.settings,size: 30.sp,)),
                        Text("Setting",style: smallTextStyle.copyWith(fontSize:22.sp),),
                        Spacer(),
                        Icon(Icons.play_arrow,color: Colors.grey,)
                      ],
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){
                        Get.to(()=>SpalshScreen());
                      },
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon:Icon(Icons.login_outlined,size: 30.sp,)),
                          Text("Logout",style: smallTextStyle.copyWith(fontSize:22.sp),),
                          Spacer(),
                          Icon(Icons.play_arrow,color: Colors.grey,)
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
