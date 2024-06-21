import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/json_provider.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

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
                height: 900,
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
                  ProviderTrue.Data2[ProviderFalse.currentIndex].Eng as String,style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}
