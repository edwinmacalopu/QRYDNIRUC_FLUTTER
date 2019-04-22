import 'dart:convert';

Ruc rucFromJson(String str) => Ruc.fromJson(json.decode(str));

String rucToJson(Ruc data) => json.encode(data.toJson());

class Ruc {
    String ruc;
    String razonSocial;
    String nombreComercial;
    List<dynamic> telefonos;
    String tipo;
    String estado;
    String condicion;
    String direccion;
    dynamic departamento;
    dynamic provincia;
    dynamic distrito;
    DateTime fechaInscripcion;
    String sistEmsion;
    String sistContabilidad;
    String actExterior;
    List<String> actEconomicas;
    List<String> cpPago;
    List<String> sistElectronica;
    DateTime fechaEmisorFe;
    List<String> cpeElectronico;
    dynamic fechaPle;
    List<String> padrones;

    Ruc({
        this.ruc,
        this.razonSocial,
        this.nombreComercial,
        this.telefonos,
        this.tipo,
        this.estado,
        this.condicion,
        this.direccion,
        this.departamento,
        this.provincia,
        this.distrito,
        this.fechaInscripcion,
        this.sistEmsion,
        this.sistContabilidad,
        this.actExterior,
        this.actEconomicas,
        this.cpPago,
        this.sistElectronica,
        this.fechaEmisorFe,
        this.cpeElectronico,
        this.fechaPle,
        this.padrones,
    });

    factory Ruc.fromJson(Map<String, dynamic> json) => new Ruc(
        ruc: json["ruc"],
        razonSocial: json["razonSocial"],
        nombreComercial: json["nombreComercial"],
        telefonos: new List<dynamic>.from(json["telefonos"].map((x) => x)),
        tipo: json["tipo"],
        estado: json["estado"],
        condicion: json["condicion"],
        direccion: json["direccion"],
        departamento: json["departamento"],
        provincia: json["provincia"],
        distrito: json["distrito"],
        fechaInscripcion: DateTime.parse(json["fechaInscripcion"]),
        sistEmsion: json["sistEmsion"],
        sistContabilidad: json["sistContabilidad"],
        actExterior: json["actExterior"],
        actEconomicas: new List<String>.from(json["actEconomicas"].map((x) => x)),
        cpPago: new List<String>.from(json["cpPago"].map((x) => x)),
        sistElectronica: new List<String>.from(json["sistElectronica"].map((x) => x)),
        fechaEmisorFe: DateTime.parse(json["fechaEmisorFe"]),
        cpeElectronico: new List<String>.from(json["cpeElectronico"].map((x) => x)),
        fechaPle: json["fechaPle"],
        padrones: new List<String>.from(json["padrones"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "ruc": ruc,
        "razonSocial": razonSocial,
        "nombreComercial": nombreComercial,
        "telefonos": new List<dynamic>.from(telefonos.map((x) => x)),
        "tipo": tipo,
        "estado": estado,
        "condicion": condicion,
        "direccion": direccion,
        "departamento": departamento,
        "provincia": provincia,
        "distrito": distrito,
        "fechaInscripcion": fechaInscripcion.toIso8601String(),
        "sistEmsion": sistEmsion,
        "sistContabilidad": sistContabilidad,
        "actExterior": actExterior,
        "actEconomicas": new List<dynamic>.from(actEconomicas.map((x) => x)),
        "cpPago": new List<dynamic>.from(cpPago.map((x) => x)),
        "sistElectronica": new List<dynamic>.from(sistElectronica.map((x) => x)),
        "fechaEmisorFe": fechaEmisorFe.toIso8601String(),
        "cpeElectronico": new List<dynamic>.from(cpeElectronico.map((x) => x)),
        "fechaPle": fechaPle,
        "padrones": new List<dynamic>.from(padrones.map((x) => x)),
    };
}


/*class RUC{
  String ruc;
  String razonsocial;
  String nombrecomercial;
 // List<String>telefonos;
    String tipo;
    String estado;
     String condicion;
     String direccion;
          String departamento;
           String distrito;
           String provincia;
             String fechaInscripcion;
              String sistEmsion;
               String sistContabilidad;
                  String actExterior;
  
  RUC({
this.ruc,
this.razonsocial,
this.nombrecomercial,
//this.telefonos,
this.tipo,
this.condicion,
this.estado,
this.direccion,
this.departamento,
this.distrito,
this.provincia,
this.fechaInscripcion,
this.sistEmsion,
this.sistContabilidad,
this.actExterior
  });
  factory RUC.fromJson(Map<String,dynamic>parsedJson){
//var telefonoFromJson=parsedJson['telefono'];
//List<String> telefonoList=telefonoFromJson.cast<String>();

    return RUC(
        ruc:parsedJson['ruc'],
        razonsocial: parsedJson['razonSocial'],
        nombrecomercial: parsedJson['nombreComercial'],
        //telefonos: telefonoList,
           tipo: parsedJson['tipo'],
           estado: parsedJson['estado'],
              condicion: parsedJson['condicion'],
                 direccion: parsedJson['direccion'],
                    departamento: parsedJson['departamento'],
                    distrito: parsedJson['distrito'],
                     provincia: parsedJson['provincia'],
                     fechaInscripcion: parsedJson['fechaInscripcion'],
           sistEmsion: parsedJson['sistEmsion'],
           sistContabilidad: parsedJson['sistContabilidad'],
          actExterior: parsedJson['actExterior'],
    );
  }
}*/