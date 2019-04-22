import 'package:flutter/material.dart';
import 'package:query_rucdni/model/ruc.dart';
import 'package:query_rucdni/services/servicesruc.dart';

 
  class Mostrardatosruc extends StatefulWidget {
    final String value2;
    Mostrardatosruc({this.value2});

    

   @override
   _MostrardatosrucState createState() => _MostrardatosrucState();
 }
 
 class _MostrardatosrucState extends State<Mostrardatosruc> {
    //static const String routeName = "/pageruc";
    int valida=0;   
 callAPIruc(){    
    createPostruc(this.widget.value2).then((response){
        if(response.statusCode > 200){
               
      print(response.statusCode);
        //valida=1;
         } else{
        valida=1;
          print(response.statusCode);
     }}).catchError((error){
      //valida=1;
      print('error : $error');
    });
  }
   @override
   Widget build(BuildContext context) {

      
     return Scaffold(
       appBar: AppBar(
         title: Text("RUC"),
       ),
       body: ListView(         
         children: <Widget>[
           Container(             
            child: FutureBuilder<Ruc>(
            future: getPostRUC(this.widget.value2),
            builder: (context,snapshot){
              callAPIruc();
              if(snapshot.connectionState == ConnectionState.done){
                 if(snapshot.hasError){
                  return Text("Error");
                }
                if(valida==1){                  
               return 
                Container(
                 child: Row(
                   children: <Widget>[                               
                   Expanded(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 20,
                      ),                   
                      child:                     
                       Text("RUC :",
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.ruc.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('RAZON SOCIAL :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.razonSocial.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('NOMBRE COMERCIAL :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.nombreComercial.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('TIPO :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.tipo.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('ESTADO :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.estado.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('CONDICION :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.condicion.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('DIRECCION :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.direccion.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('DEPARTAMENTO :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.departamento.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('PROVINCIA :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.provincia.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('DISTRITO :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.distrito.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('FECHA INSCRIPCION :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.fechaInscripcion.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('SISTEMA DE EMISION :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.sistEmsion.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('SISTEMA CONTABILIDAD :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.sistContabilidad.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('ACTA EXTERIOR :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.actExterior.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('ACTA ECONOMICA :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.actEconomicas.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('CP PAGO :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.cpPago.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('SISTEMA ELECTRONICO :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.sistElectronica.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('FECHA EMISOR :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.fechaEmisorFe.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('CPE ELECTRONICO :',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 10,fontFamily: 'manrope-regular'),
                      ),
                    ),
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.cpeElectronico.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     ] 
                )
                   )
                   ] 
                   )
                ); 
               }else{
 return Text("NO SE ENCOTRARON DATOS",style: TextStyle(color: Colors.red,fontSize: 18,fontFamily: 'manrope-regular'));
                }
                }              
                else
                return CircularProgressIndicator();       
              
                
              },
            ) 
           )
           
         ],
                      
                 
          ),
          
       );
     
   }

 }