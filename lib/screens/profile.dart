import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profill" ,style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 26,
                  ),
                  Container(
                    child: Column(
                      children: [
                        menu_get(
                          context,
                          Icons.account_circle_sharp,
                          "Hesap Ayarları",
                        ),
                        Divider(
                          color: Colors.grey[700],
                          height: 26,
                        ),
                        menu_get(
                          context,
                          Icons.security,
                          "Güvenlik",
                        ),
                        Divider(
                          color: Colors.grey[700],
                          height: 26,
                        ),
                        menu_get(
                          context,
                          Icons.lock_rounded,
                          "Gizlilik",
                        ),
                        Divider(
                          color: Colors.grey[700],
                          height: 26,
                        ),
                        menu_get(
                          context,
                          Icons.help_outline,
                          "Yardım ve Destek",
                        ),
                        Divider(
                          color: Colors.grey[700],
                          height: 26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

menu_get(
  BuildContext context,
  IconData icon_1,
  String title,
) {
  return Container(
    child: InkWell(
      child: ListTile(
        leading: Icon(
          icon_1,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        trailing: Icon(
          Icons.play_arrow_outlined,
          size: 20,
        ),
      ),
    ),
  );
}
