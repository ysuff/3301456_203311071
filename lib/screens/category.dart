import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CATEGORY",
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        foregroundColor: Colors.amber,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          width: 360.w,
          height: 690.h,
          child: Column(
            children: [
              Divider(),
              InkWell(onTap: ()=>{Navigator.of(context).pushNamed("/mostwatched")},
                child: Container(
                  width: 300.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  alignment: Alignment.center,
                  child: Text("Most Watched Movies"),
                ),
              ),              Divider(),
              Container(
                width: 300.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),

                ),
                alignment: Alignment.center,
                child: Text("ACTION"),
              ),              Divider(),
              Container(
                width: 300.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),

                ),
                alignment: Alignment.center,
                child: Text("ROMANTIC"),
              ),              Divider(),
              Container(
                width: 300.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),

                ),
                alignment: Alignment.center,
                child: Text("ANIME"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
