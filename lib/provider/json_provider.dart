import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:rigveda_app/model/json_model.dart';

class JsonProvider extends ChangeNotifier{
   List Data=[];
   List <JsonModel>Data2=[];
   JsonModel? jsonModel;


   JsonProvider(){


     jsonconvert();

   }

    Future<void> jsonconvert() async {
         String? json= await  rootBundle.loadString('assets/Dohe.json');
         Data=jsonDecode(json);
         Data2=Data.map( (a) => JsonModel.fromJson( a ),).toList() ;

         notifyListeners();


    }
   int _currentIndex = 0;
   void changeIndex(int index)
   {
     _currentIndex = index;
   }
   int get currentIndex => _currentIndex;



}