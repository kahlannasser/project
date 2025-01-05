import 'package:flutter/material.dart';
import 'package:smartmarket/Custome/CustomeText.dart';
import 'package:smartmarket/Custome/CustomeTextAndIcon.dart';
import 'package:smartmarket/Custome/Line.dart';
import 'package:smartmarket/Custome/WhiteSquare.dart';
import 'package:smartmarket/PasswordTyping.dart';
import 'Custome/CustomeImages.dart';
class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(

              children: [
                Container(
                  height: 350,
                  width: 450,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Container(
                        child: const imagewhite(),
                        width: 305,
                        height: 300,
                      ),
                      Container(
                        child: Imagebuldes(),
                        width: 200,
                      ),
                      Positioned(child: CircleImage(imagePath: "Assest/artist.jpg",),left: 135,top: 120,),
                      Positioned(child:CustomeTextnormal400(),top: 240,left: 100,),
                      Positioned(child:      CustomeTextnormal(text: "Type your password",),top: 300,left:90,)

                    ],
                  ),


                ),



              ],
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WhiteSquare(),
                  SizedBox(width: 5,),
                  WhiteSquare(),
                  SizedBox(width: 5,),
                  WhiteSquare(),
                  SizedBox(width: 5,),
                  WhiteSquare(),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: TextIcon(text:" Not you?",Navigators: passwordTyping(),),
            ),
            SizedBox(height: 40,),
            Line(),



          ],
        ),
      ),
    );
  }
}
