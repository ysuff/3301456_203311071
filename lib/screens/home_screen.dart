import 'package:amdb/widgets/amdb_logo_widget.dart';
import 'package:amdb/widgets/primary_film_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<List<Object>> movies = [
    [
      "assets/images/green_mile_1.jpg",
      "assets/images/green_mile_1.jpg",
      "Yeşil Yol",
      1999,
      4.3,
    ],
    [
      "assets/images/green_mile_1.jpg",
      "assets/images/green_mile_1.jpg",
      "Yeşil Yol",
      1999,
      4.3,
    ],
    [
      "assets/images/green_mile_1.jpg",
      "assets/images/green_mile_1.jpg",
      "Yeşil Yol",
      1999,
      4.3,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        title: AMDbLogoWidget.flatLogo(true),
        actions: [
          Icon(
            Icons.search,
            size: 40.h,
            color: Colors.black,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 12,
        backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
            label: "x",
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            label: "y",
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            label: "z",
            icon: Icon(Icons.ac_unit),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, val) {
              return PrimaryFilmWidget(
                  bGImagePath: movies[val][0] as String,
                  fGImagePath: movies[val][1] as String,
                  title: movies[val][2] as String,
                  year: movies[val][3] as int,
                  rating: movies[val][4] as double);
            }),
      ),
    );
  }
}
