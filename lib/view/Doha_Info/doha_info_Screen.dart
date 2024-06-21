import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../provider/json_provider.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    JsonProvider ProviderTrue=Provider.of<JsonProvider>(context);
    JsonProvider ProviderFalse=Provider.of<JsonProvider>(context,listen: false);
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 40,
            color: Color(0xff23010A),
          ),
          Stack(
            children: [
              Container(
                height: 860,
                child: Image.asset(
                  'assets/img/IMG-20240621-WA0014.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 60,
                  width: 50,

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 140),
                child: Text("दोहा(Doha) -${ProviderTrue.Data2[ProviderFalse.currentIndex].no}",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize:27,

                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120,left: 80),
                child: Text(ProviderTrue.Data2[ProviderFalse.currentIndex].dohe as String,style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350,left: 60,right: 50),
                child: Text(
                  (Hindi==1)?ProviderTrue.Data2[ProviderFalse.currentIndex].hindi as String :text as String,style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
                ),
              )

            ],
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          GestureDetector(
            onTap: () {
             setState(() {
               Gujrati=0;
               Hindi=0;
               Eng=1;
               if (Eng==1){
                 text=ProviderTrue.Data2[ProviderFalse.currentIndex].Eng as String;
               }
               else{
                 text=ProviderTrue.Data2[ProviderFalse.currentIndex].hindi as String;

               }
               print(text);
             });
            },
            child: Container(
              height: 70,
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/Button.png"),
                  fit: BoxFit.cover
                )
              ),
              child: Center(
                child: Text("Engalish",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
              ),

            ),
          ),
          GestureDetector(
            onTap: () {
            setState(() {
              Gujrati=0;
              Eng=0;
              Hindi=1;
              if (Hindi==1){
                text=ProviderTrue.Data2[ProviderFalse.currentIndex].hindi as String;
              }
              else{
                text=ProviderTrue.Data2[ProviderFalse.currentIndex].hindi as String;

              }
              print(text);
            });
            },
            child: Container(
              height: 70,
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/Button.png"),
                  fit: BoxFit.cover
                )
              ),
              child: Center(
                child: Text("Hindi",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
              ),

            ),
          ),
          GestureDetector(
            onTap: () {

              setState(() {

                Hindi=0;
                Eng=0;
                Gujrati=1;

                if (Gujrati==1){
                  text=ProviderTrue.Data2[ProviderFalse.currentIndex].gujrati as String;
                }
                else{
                  text=ProviderTrue.Data2[ProviderFalse.currentIndex].hindi as String;

                }
                print(text);
              });

            },
            child: Container(
              height: 70,
              width: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/Button.png"),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: Text("Gujrati",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),),
              ),

            ),
          ),
        ],

      ),
    );
  }
}
int Gujrati=0;
int Eng=0;
int Hindi=1;
String? text;
