import 'package:amdb/screens/films_screen.dart';
import 'package:amdb/widgets/amdb_logo_widget.dart';
import 'package:amdb/widgets/primary_film_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: AMDbLogoWidget.flatLogo(true),
        actions:
        [],
      ),

      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            PrimaryFilmWidget(
              bGImagePath: "assets/images/aslan_kral_arkaplan.jpg",
              fGImagePath: "assets/images/aslan_kral_ana_erkan.jpg",
              title: "Aslan Kral",
              year: 1996,
              rating: 4.25,
              function: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FilmsScreen(rating: 4.25))),
            ),
            PrimaryFilmWidget(
              bGImagePath: "assets/images/esaretin_bedeli.jpg",
              fGImagePath: "assets/images/Showshank_redemtion_ana_.jpg",
              title: "Esaretin Bedeli",
              year: 1994,
              rating: 4.6,
              function: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FilmsScreen(rating: 3.3))),
            ),
            PrimaryFilmWidget(
              bGImagePath: "assets/images/green_mile_font.jpg",
              fGImagePath: "assets/images/green_mile_ana_ekran.jpg",
              title: "Yeşil Yol",
              year: 1999,
              rating: 4.3,
              function: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FilmsScreen(rating: 4.25))),
            ),
          ],
        ),
      )),
    );
  }
}
