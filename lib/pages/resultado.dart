import 'package:ecolecua/service/app_config_service.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class ResultadoPage extends StatelessWidget {
  final AppConfigService appConfigService;
  
  final int _correctas;

  ResultadoPage(this.appConfigService, this._correctas);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body:
      Center(child: Text('Respuestas correctas: ' + _correctas.toString())),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      HomePage(appConfigService)));
        },
        icon: Icon(Icons.home),
        label: Text('Ir al menú'),
      ),
    );
  }
}
