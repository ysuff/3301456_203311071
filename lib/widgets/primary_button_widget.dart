import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    Key? key, required this.title, required this.path,
  }) : super(key: key);
  final String title;
  final String path;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 15,
          primary: Colors.amber,
        ),
        onPressed: () =>Navigator.of(context).pushNamed(path),
        child: Text(
          title,
          style: TextStyle(fontSize: 30.sp, color: Colors.black),
        ));
  }
}
