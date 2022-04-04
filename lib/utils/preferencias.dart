import 'package:shared_preferences/shared_preferences.dart';

class Preferencias {
  //todo DICIEMBRE
  guardarPrecioPimerMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('1', precio);
  }

  //todo ENERO
  guardarPrecioSegundoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('2', precio);
  }

  //todo FEBRERO
  guardarPrecioTercerMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('3', precio);
  }

  //todo MARZO
  guardarPrecioCuartoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('4', precio);
  }

  //todo ABRIL
  guardarPrecioQuintoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('5', precio);
  }

  //todo MAYO
  guardarPrecioSextoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('6', precio);
  }

  //todo JUNIO
  guardarPrecioSeptimoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('7', precio);
  }

  //todo JULIO
  guardarPrecioOctavoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('8', precio);
  }

  //todo AGOSTO
  guardarPrecioNovenoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('9', precio);
  }

  //todo SEPTIEMBRE
  guardarPrecioDecimoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('10', precio);
  }

  //todo OCTUBRE
  guardarPrecioDecimoPimerMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('11', precio);
  }

  //todo NOVIEMBRE
  guardarPrecioDecimoSegundoMes(int precio) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    await preferencias.setInt('12', precio);
  }

  //todo GENERAL
  obtenerValorMes(String clave) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    var respuesta = preferencias.getInt(clave);
    return respuesta;
  }

  guardarBoolMes(String clave, bool booleano) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool(clave, booleano);
  }

  Future<bool?> obtenerValorBool(String value) async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    var booleano = preferencias.getBool(value);
    return booleano;
  }
}
