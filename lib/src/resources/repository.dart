import 'dart:async';
import 'package:blocpatron/src/models/entity_model.dart';
import 'package:blocpatron/src/resources/entity_api_provider.dart';

class Repository {  // Esta clase Repository es el punto central desde donde los datos fluirán hacia el Bloc

  final entityApiProvider =  EntityApiProvider();//MovieApiProvider();

  Future<GridEntity> fetchAllEntities() => entityApiProvider.fetchEntityList(1,'');

}