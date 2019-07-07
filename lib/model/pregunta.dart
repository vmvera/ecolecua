
class Pregunta {
  var _texto;
  var _respuestas = new List<String>();
  int _correcta;


  Pregunta(this._texto, this._respuestas, this._correcta);


  String get texto => _texto;

  bool evalua(int respuesta) {
    return (_correcta == respuesta + 1);
  }

  get respuestas => _respuestas;

}
