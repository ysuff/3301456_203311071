import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilmsScreen extends StatelessWidget {
  const FilmsScreen({Key? key, required this.rating}) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Material(
                        elevation: 20,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/aslan_kral_1.jpg"),
                              )),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "ASLAN KRAL",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "1994",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RatingBarIndicator(
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          rating: rating,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 25.0,
                          direction: Axis.horizontal,
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Vahsi Afrika'nin derinliklerinde genç bir aslan dogar. Babasi bölgenin krali olan küçük aslan, kisa zamanda onun yerine geçmek isteyen hirsli düsmanlarinin tehdidi altinda kalir.",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Image.asset("assets/images/aslan_kral_2.jpg"),
                Image.asset("assets/images/aslan_kral_3.jpg"),
                Image.asset("assets/images/aslan_kral_4.jpg"),
                Image.asset("assets/images/aslan_kral_5.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
