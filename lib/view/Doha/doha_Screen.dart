import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../provider/json_provider.dart';

class DohaListScreen extends StatelessWidget {
  const DohaListScreen({super.key});

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
                  'assets/img/woden.jpg',
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
                padding: const EdgeInsets.only(top: 20,left: 50),
                child: Text("सुंदरदास जी के 50 दोहे",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize:22,

                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  height: 830,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [

                        ...List.generate(
                            ProviderTrue.Data2.length,
                            (index) =>   Column(
                              children: [
                                Text("दोहा(Doha) -${ProviderTrue.Data2[index].no}",style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                                ),),
                                InkWell(
                                  onTap: () {
                                    ProviderFalse.changeIndex(index);
                                    Navigator.pushNamed(context, '/DohaInfo');

                                  },
                                  child: Stack(
                                    children: [
                                      Image(
                                        image: AssetImage('assets/img/DohaBox.png'),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 40, left: 90,),
                                        child: Text(
                                          ProviderTrue.Data2[index].dohe as String
                                          ,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.5
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 33,
            width: 450,
            child: Image.asset('assets/img/wodenEx.jpeg',fit: BoxFit.cover,),
          )
        ],
      ),
    );
  }
}
