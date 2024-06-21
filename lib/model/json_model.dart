class JsonModel{
  int? no;
  String? dohe;
  String? hindi;
  String? gujrati;
  String? Eng;

  JsonModel({this.no,this.dohe,this.hindi,this.gujrati,this.Eng});

  factory JsonModel.fromJson(Map json)=> JsonModel(
    no: json["no"],
    dohe: json["dohe"],
    hindi: json["hindi"],
    gujrati: json["gujrati"],
    Eng: json["Eng"]

  );



}