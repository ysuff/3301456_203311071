import 'package:amdb/model/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseFunctions extends StatelessWidget {
  FirebaseFunctions({
    Key? key,
    this.title,
    this.path,
    this.email,
    this.password,
  }) : super(key: key);
  String? title;
  String? path;
  String? email;
  String? password;
  Future<void> loginFunc(email, password, context,path) async {
    print(email);
    print(password);

    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.of(context).pushNamed(path);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<void> registerFunc(email, password, context,path) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await FirebaseFirestore.instance
          .collection("model")
          .doc(credential.user!.uid)
          .set(Model(email: email,password: password).toJson());
      Navigator.of(context).pushNamed(path);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<Model> getUser() async {
    CollectionReference ref = FirebaseFirestore.instance.collection("kullanicilar");
    String uid = FirebaseAuth.instance.currentUser!.uid;
    var document = ref.doc(uid);
    var response = await document.get();

    Model model = Model.fromJson(response.data() as dynamic);
    return model;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
