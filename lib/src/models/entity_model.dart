class GridEntity{
  List<Entity> results;
  int page;
  bool status;
  String message;

  GridEntity({this.results,this.page,this.status,this.message});
   
  factory GridEntity.fromJson(Map<String, dynamic> json) => new GridEntity(
  results: new List<Entity>.from(json["Records"].map((x) => Entity.fromJson(x)).toList()),
  page: json["page"],
  status:json["status"]
  );

  factory GridEntity.fromJsonResultSave(Map<String, dynamic> json) => new GridEntity(
  status:json["status"],
  message:json["message"],
  );

}

class Entity{
  int id;
  String name_entity;
  String legal_address;
  String paternal_surname;
  String maternal_surname;
  String names;
  int type_person_id;
  int document_type_identity_id;
  String document;
  String social_reason;
  bool is_client;
  bool is_provider;
  bool is_m;
  bool is_f;
  String contact;
  String contact_phone;
  String contact_email;
  String birth_date;

   Entity({this.id,this.name_entity,this.legal_address,this.paternal_surname,this.maternal_surname,this.names,this.type_person_id,
   this.document_type_identity_id,this.document,this.social_reason,this.is_client,this.is_provider,this.is_m,this.is_f,this.contact,this.contact_phone,
   this.contact_email,this.birth_date});
   
   // CONVERTIMOS A MAP PARA INSERTAR EN LA BD 
   Map<String,dynamic>toMap()=>{
     "id":id,
     "name_entity":name_entity,
     "legal_address":legal_address,
     "paternal_surname":paternal_surname,
     "maternal_surname":maternal_surname,
     "names":names,
     "type_person_id":type_person_id,
     "document_type_identity_id":document_type_identity_id,
     "document":document,
     "social_reason":social_reason,
     "is_client":is_client,
     "is_provider":is_provider,
     "is_m":is_m,
     "is_f":is_f,
     "contact":contact,
     "contact_phone":contact_phone,
     "contact_email":contact_email,
     "birth_date":birth_date
   };

// HTTP
 /* Map toMapApi() {
    var map = new Map<String, dynamic>();
    map["name_entity"] = name_entity;
    map["legal_addres"] = legal_address;
    map["paternal_surname"] = paternal_surname;
    map["maternal_surname"] = maternal_surname;
    map["names"] = names;
    map["type_person_id"] = type_person_id;
    map["document_type_identity_id"] = document_type_identity_id;
    map["document"] = document;
    map["social_reason"] = social_reason;
    map["is_client"] = is_client;
    map["is_provider"] = is_provider;
    map["is_m"] = is_m;
    map["is_f"] = is_f;
    map["contact"] = contact;
    map["contact_phone"] = contact_phone;
    map["contact_email"] = contact_email;
    map["birth_date"] = birth_date;
 
    return map;
  }*/

   
  // PARA RECIBIR LOS DATOS DE LA BD NECESITAMOS PASARLO DE MAP A JSON // AQUI ESTAMOS DESERIALIZANDO
 factory Entity.fromMap(Map<String,dynamic>json)=>new Entity( // IGUAL DE ABAJO
    id:json["id"],
    name_entity:json["name_entity"], 
    legal_address:json["legal_address"],
    paternal_surname:json["paternal_surname"],
    maternal_surname:json["maternal_surname"],
    names:json["names"],
    type_person_id:json["type_person_id"],
    document_type_identity_id:json["document_type_identity_id"],
    document:json["document"],
    social_reason:json["social_reason"],
    is_client:json["is_client"],
    is_provider:json["is_provider"],
    is_m:json["is_m"],
    is_f:json["is_f"],
    contact:json["contact"],
    contact_phone:json["contact_phone"],
    contact_email:json["contact_email"],
    birth_date: json["birth_date"]
    );

    factory Entity.fromJson(Map<String, dynamic> json)=>new Entity( // DE JSON A OBJECT
    id:json["id"],
    name_entity:json["name_entity"], 
    legal_address:json["legal_address"],
    paternal_surname:json["paternal_surname"],
    maternal_surname:json["maternal_surname"],
    names:json["names"],
    type_person_id:json["type_person_id"],
    document_type_identity_id:json["document_type_identity_id"],
    document:json["document"],
    social_reason:json["social_reason"],
    is_client:json["is_client"],
    is_provider:json["is_provider"],
    is_m:json["is_m"],
    is_f:json["is_f"],
    contact:json["contact"],
    contact_phone:json["contact_phone"],
    contact_email:json["contact_email"],
    birth_date: json["birth_date"]
    );
}