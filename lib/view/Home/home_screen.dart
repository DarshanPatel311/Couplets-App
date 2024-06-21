import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rigveda_app/provider/json_provider.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    JsonProvider ProviderTrue=Provider.of<JsonProvider>(context);
    JsonProvider ProviderFalse=Provider.of<JsonProvider>(context,listen: false);

    return Scaffold(


      body: Stack(
        children: [
          Container(
            height: 50,
            color: Color(0xff23010A),
          ),
          Stack(

            children: [


              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 65,
                  width: double.infinity,
                  child: Image.asset('assets/img/appbar.jpeg',fit: BoxFit.cover,),
                ),
              ),

              Padding(
                padding:const EdgeInsets.only(top: 100),
                child: Container(
                 height: 700,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/homeimg.png'),
                          fit: BoxFit.cover
                    )
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 800),
                child: Container(
                  height: 105,
                  width: 450,
                  child: Image.asset('assets/img/pdf.jpeg',fit: BoxFit.cover,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 905),
                child: Container(
                  height: 260,
                  width: 450,

                  child: Image.asset('assets/img/WhatsApp Image 2024-06-21 at 5.22.16 PM-Photoroom.png',fit: BoxFit.cover,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 650,left: 100),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/DohaList');

                  },
                  child: Container(
                    height: 80,
                    width: 250,


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500,left: 130),
                child: Text("संत सुंदरदास \nके प्रसिद्ध दोहे",style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),
              )
            ],
          ),
        ],
      ),
    );
  }
}
