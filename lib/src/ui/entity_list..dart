import 'package:blocpatron/src/blocs/entities_bloc.dart';
import 'package:blocpatron/src/models/entity_model.dart';
import 'package:flutter/material.dart';

class EntityList extends StatefulWidget {
  @override
  _EntityListState createState() => _EntityListState();
}

class _EntityListState extends State<EntityList> {
  @override
  void initState() {
    super.initState();
    bloc.fetchAllEntities();
  }

 @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Clientes'),
      ),
      body: StreamBuilder(
        stream: bloc.allEntities,
        builder: (context, AsyncSnapshot<GridEntity> snapshot){
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        }
      ),
    );
  }

Widget buildList(AsyncSnapshot<GridEntity> snapshot) {
    return GridView.builder(
      itemCount: snapshot.data.results.length,
      gridDelegate: 
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Expanded(
                child: Dismissible(
                  key: UniqueKey(),
                  background: Container(color: Colors.red),
                  onDismissed: (diretion){
                    // ClientDatabaseProvider.db.deteleClientWithId(item.id);
                    //_delete(item.id.toString());
                  },
                  child: ListTile(
                    title: Text(snapshot.data.results[index].name_entity),
                    subtitle: Text(snapshot.data.results[index].document),
                    leading: CircleAvatar(
                      child: Text((snapshot.data.results[index].id).toString(),style: TextStyle(color: Colors.white)),
                      //backgroundColor: _color,
                      ), 
                    onTap: (){
                    },
                    /*title: Text(snapshot.data[i]['name_entity']),
                    subtitle: Text(snapshot.data[i]['document']),
                    leading: CircleAvatar(child: Text(snapshot.data[i]['id'].toString())), */
                  ),
                ),
              )
             ]
          );
         }
    );
  }
}

