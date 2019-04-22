import 'dart:convert';

Dni dniFromJson(String str) => Dni.fromJson(json.decode(str));

String dniToJson(Dni data) => json.encode(data.toJson());

class Dni {
    String dni;
    String nombres;
    String apellidoPaterno;
    String apellidoMaterno;
    dynamic codVerifica;

    Dni({
        this.dni,
        this.nombres,
        this.apellidoPaterno,
        this.apellidoMaterno,
        this.codVerifica,
    });

    factory Dni.fromJson(Map<String, dynamic> json) => new Dni(
        dni: json["dni"],
        nombres: json["nombres"],
        apellidoPaterno: json["apellidoPaterno"],
        apellidoMaterno: json["apellidoMaterno"],
        codVerifica: json["codVerifica"],
    );

    Map<String, dynamic> toJson() => {
        "dni": dni,
        "nombres": nombres,
        "apellidoPaterno": apellidoPaterno,
        "apellidoMaterno": apellidoMaterno,
        "codVerifica": codVerifica,
    };
}

/*class DNI{
  String dni;
  String nombres;
  String apellidoPaterno;
  String apellidoMaterno;

  DNI({
this.dni,
this.nombres,
this.apellidoPaterno,
this.apellidoMaterno
  });
  factory DNI.fromJson(Map<String,dynamic>parsedJson){
    return DNI(
        dni:parsedJson['dni'],
        nombres: parsedJson['nombres'],
        apellidoPaterno: parsedJson['apellidoPaterno'],
        apellidoMaterno: parsedJson['apellidoMaterno']
    );
  }
}*/