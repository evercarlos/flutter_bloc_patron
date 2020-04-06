import 'dart:convert';
import 'package:blocpatron/src/models/entity_model.dart';
import 'package:http/http.dart' as http;

class EntityApiProvider  {

Future<GridEntity> fetchEntityList(int currentPage,String search) async { //FETCH=IR A BUSCAR 
   try{
    var url="http://192.168.1.43/app_entities/list";

    final response = await http.post(url, body: {
      "search": search,
      "page":''//currentPage.toString(),
    });
    if (response.statusCode == 200) {
     // print('Get select');
      //print(json.decode(response.body));
      GridEntity gg= GridEntity.fromJson(json.decode(response.body));
      //print(gg);
      return gg;
    } else {
     // print('error de red....');
      return null;
      //throw Exception('Faild to load');
    }

   } catch (e) {
     //print(null);
    return null;
  }
}



}
