import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool deneme= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 690.h,
          width: 360.w,
          child: Column(
            children: [
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: Text("Takip ediymmi seni"),
                  ),Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: FlutterSwitch(onToggle: (bol)=>{setState((){deneme=bol;})},value: deneme,
                    ),
                  ),
                ],
              ),Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: Text("Takip ediymmi seni"),
                  ),Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: FlutterSwitch(onToggle: (bol)=>{setState((){deneme=bol;})},value: deneme,
                    ),
                  ),
                ],
              ),Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: Text("Takip ediymmi seni"),
                  ),Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: FlutterSwitch(onToggle: (bol)=>{setState((){deneme=bol;})},value: deneme,
                    ),
                  ),
                ],
              ),Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: Text("Takip ediymmi seni"),
                  ),Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: FlutterSwitch(onToggle: (bol)=>{setState((){deneme=bol;})},value: deneme,
                    ),
                  ),
                ],
              ),Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: Text("Takip ediymmi seni"),
                  ),Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: FlutterSwitch(onToggle: (bol)=>{setState((){deneme=bol;})},value: deneme,
                    ),
                  ),
                ],
              ),Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: Text("Takip ediymmi seni"),
                  ),Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: FlutterSwitch(onToggle: (bol)=>{setState((){deneme=bol;})},value: deneme,
                    ),
                  ),
                ],
              ),Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: Text("Takip ediymmi seni"),
                  ),Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: FlutterSwitch(onToggle: (bol)=>{setState((){deneme=bol;})},value: deneme,
                    ),
                  ),
                ],
              ),Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: Text("Takip ediymmi seni"),
                  ),Container(
                    height: 30.h,
                    width: 160.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber.withOpacity(0.9)),
                    child: FlutterSwitch(onToggle: (bol)=>{setState((){deneme=bol;})},value: deneme,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
