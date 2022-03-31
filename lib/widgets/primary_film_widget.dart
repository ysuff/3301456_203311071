import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryFilmWidget extends StatelessWidget {
  const PrimaryFilmWidget({
    Key? key, required this.bGImagePath, required this.fGImagePath, required this.title, required this.year, required this.rating,
  }) : super(key: key);
  final String bGImagePath;
  final String fGImagePath;
  final String title;
  final int year;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.all(
          Radius.circular(20.r),
        ),
        child: Container(
          alignment: Alignment.center,
          width: ScreenUtil().screenWidth * 0.93,
          height: 175.h,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.4,
                image:
                AssetImage(bGImagePath)),
            borderRadius: BorderRadius.all(
              Radius.circular(20.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Row(
              children: [
                Container(
                  height: 145.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            fGImagePath)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.r),
                    ),
                  ),
                ),
                SizedBox(width: 30.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.h,),
                    Text(
                      "$year",
                      style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Text("${rating*2} /",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),),
                        RatingBarIndicator(
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          rating:rating,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 25.0,
                          direction: Axis.horizontal,
                        ),
                      ],
                    ),
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
