
import 'package:blocpatron/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:blocpatron/src/models/entity_model.dart';

class EntitiesBloc{
  final _repository= Repository();// objeto de repository para acceder a fetchEntityList
  final _entitiesFetcher= PublishSubject<GridEntity>();//rxdart; PublishSubject: cuya responsabilidad es añadir los datos que obtuvo del servidor en forma de objeto gridEntity y pasarlos a la pantalla de la interfaz de usuario como stream
 
  Observable<GridEntity> get allEntities => _entitiesFetcher.stream;// Para pasar el objeto GridEntity como stream hemos creado otro método AllEntities()cuyo tipo de retorno es Observable (mira este vídeo si no entiendes Observables)

  fetchAllEntities() async {
    GridEntity gridEntity= await _repository.fetchAllEntities();
    _entitiesFetcher.sink.add(gridEntity);
  }

  dispose(){ // para evitar fallas de memoria se tiene que  invoar en el  UI igual qu en statesfullwidget
    _entitiesFetcher.close();
  }

}
final bloc= EntitiesBloc();