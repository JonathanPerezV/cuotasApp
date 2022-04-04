import 'package:another_flushbar/flushbar.dart';
import 'package:aplicacion_calculadora/utils/preferencias.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  Preferencias preferencias = Preferencias();

  int diciembre = 50;
  bool diciembreB = false;
  int enero = 50;
  bool eneroB = false;
  int febrero = 50;
  bool febreroB = false;
  int marzo = 50;
  bool marzoB = false;
  int abril = 50;
  bool abrilB = false;
  int mayo = 50;
  bool mayoB = false;
  int junio = 50;
  bool junioB = false;
  int julio = 50;
  bool julioB = false;
  int agosto = 50;
  bool agostoB = false;
  int septiembre = 50;
  bool septiembreB = false;
  int octubre = 50;
  bool octubreB = false;
  int noviembre = 50;
  bool noviembreB = false;
  int? total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // persistentFooterButtons: [Text('Hola')],
        appBar: AppBar(
          title: const Text(
            'Cuotas',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(children: [Expanded(child: tablaMeses())]));
  }

  Widget tablaMeses() {
    return GridView(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        //todo DICIEMBRE
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Diciembre',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: diciembreB == false
                          ? TextDecoration.none
                          : TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('1'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: diciembreB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $diciembre',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: diciembreB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $diciembre',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: diciembreB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('01'),
                  builder: (builder, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final resultado = snapshot.data;
                        return Checkbox(
                          value: resultado,
                          onChanged: (_) {
                            if (diciembreB == false) {
                              setState(
                                () {
                                  diciembreB = true;
                                  diciembre = 0;
                                  preferencias.guardarPrecioPimerMes(diciembre);
                                  preferencias.guardarBoolMes('01', diciembreB);
                                },
                              );
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste un mes de los 12, ahora tu deuda es de \$550",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(
                                () {
                                  diciembreB = false;
                                  diciembre = 50;
                                  preferencias.guardarPrecioPimerMes(diciembre);
                                  preferencias.guardarBoolMes('01', diciembreB);
                                },
                              );
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: diciembreB,
                          onChanged: (_) {
                            if (diciembreB == false) {
                              setState(
                                () {
                                  diciembreB = true;
                                  diciembre = 0;
                                  preferencias.guardarPrecioPimerMes(diciembre);
                                  preferencias.guardarBoolMes('01', diciembreB);
                                },
                              );
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste un mes de los 12, ahora tu deuda es de \$550",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(
                                () {
                                  diciembreB = false;
                                  diciembre = 50;
                                  preferencias.guardarPrecioPimerMes(diciembre);
                                  preferencias.guardarBoolMes('01', diciembreB);
                                },
                              );
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: diciembreB,
                        onChanged: (_) {
                          if (diciembreB == false) {
                            setState(
                              () {
                                diciembreB = true;
                                diciembre = 0;
                                preferencias.guardarPrecioPimerMes(diciembre);
                                preferencias.guardarBoolMes('01', diciembreB);
                              },
                            );
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste un mes de los 12, ahora tu deuda es de \$550",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(
                              () {
                                diciembreB = false;
                                diciembre = 50;
                                preferencias.guardarPrecioPimerMes(diciembre);
                                preferencias.guardarBoolMes('01', diciembreB);
                              },
                            );
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo ENERO
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enero',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: eneroB
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('2'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: eneroB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $enero',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: eneroB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $enero',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: eneroB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('02'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (eneroB == false) {
                              setState(() {
                                eneroB = true;
                                enero = 0;
                                preferencias.guardarPrecioSegundoMes(enero);
                                preferencias.guardarBoolMes('02', eneroB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste dos de los 12 meses, ahora tu deuda es de \$500",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                eneroB = false;
                                enero = 50;
                                preferencias.guardarPrecioSegundoMes(enero);
                                preferencias.guardarBoolMes('02', eneroB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: eneroB,
                          onChanged: (_) {
                            if (eneroB == false) {
                              setState(() {
                                eneroB = true;
                                enero = 0;
                                preferencias.guardarPrecioSegundoMes(enero);
                                preferencias.guardarBoolMes('02', eneroB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste dos de los 12 meses, ahora tu deuda es de \$500",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                eneroB = false;
                                enero = 50;
                                preferencias.guardarPrecioSegundoMes(enero);
                                preferencias.guardarBoolMes('02', eneroB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: eneroB,
                        onChanged: (_) {
                          if (eneroB == false) {
                            setState(() {
                              eneroB = true;
                              enero = 0;
                              preferencias.guardarPrecioSegundoMes(enero);
                              preferencias.guardarBoolMes('02', eneroB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste dos de los 12 meses, ahora tu deuda es de \$500",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              eneroB = false;
                              enero = 50;
                              preferencias.guardarPrecioSegundoMes(enero);
                              preferencias.guardarBoolMes('02', eneroB);
                            });
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo FEBRERO
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Febrero',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: febreroB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 15),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('3'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: febreroB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $febrero',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: febreroB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $febrero',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: febreroB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('03'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (febreroB == false) {
                              setState(() {
                                febreroB = true;
                                febrero = 0;
                                preferencias.guardarPrecioTercerMes(febrero);
                                preferencias.guardarBoolMes('03', febreroB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste tres de los 12 meses, ahora tu deuda es de \$450",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                febrero = 50;
                                febreroB = false;
                                preferencias.guardarPrecioTercerMes(febrero);
                                preferencias.guardarBoolMes('03', febreroB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: febreroB,
                          onChanged: (_) {
                            if (febreroB == false) {
                              setState(() {
                                febreroB = true;
                                febrero = 0;
                                preferencias.guardarPrecioTercerMes(febrero);
                                preferencias.guardarBoolMes('03', febreroB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste tres de los 12 meses, ahora tu deuda es de \$450",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                febrero = 50;
                                febreroB = false;
                                preferencias.guardarPrecioTercerMes(febrero);
                                preferencias.guardarBoolMes('03', febreroB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: febreroB,
                        onChanged: (_) {
                          if (febreroB == false) {
                            setState(() {
                              febreroB = true;
                              febrero = 0;
                              preferencias.guardarPrecioTercerMes(febrero);
                              preferencias.guardarBoolMes('03', febreroB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste tres de los 12 meses, ahora tu deuda es de \$450",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              febrero = 50;
                              febreroB = false;
                              preferencias.guardarPrecioTercerMes(febrero);
                              preferencias.guardarBoolMes('03', febreroB);
                            });
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo MARZO
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Marzo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: marzoB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('4'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: marzoB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $marzo',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: marzoB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $marzo',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: marzoB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('04'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (marzoB == false) {
                              setState(() {
                                marzoB = true;
                                marzo = 0;
                                preferencias.guardarPrecioCuartoMes(marzo);
                                preferencias.guardarBoolMes('04', marzoB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste cuatro de los 12 meses, ahora tu deuda es de \$400",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                marzoB = false;
                                marzo = 50;
                                preferencias.guardarPrecioCuartoMes(marzo);
                                preferencias.guardarBoolMes('04', marzoB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: marzoB,
                          onChanged: (_) {
                            if (marzoB == false) {
                              setState(() {
                                marzoB = true;
                                marzo = 0;
                                preferencias.guardarPrecioCuartoMes(marzo);
                                preferencias.guardarBoolMes('04', marzoB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste cuatro de los 12 meses, ahora tu deuda es de \$400",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                marzoB = false;
                                marzo = 50;
                                preferencias.guardarPrecioCuartoMes(marzo);
                                preferencias.guardarBoolMes('04', marzoB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: marzoB,
                        onChanged: (_) {
                          if (marzoB == false) {
                            setState(() {
                              marzoB = true;
                              marzo = 0;
                              preferencias.guardarPrecioCuartoMes(marzo);
                              preferencias.guardarBoolMes('04', marzoB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste cuatro de los 12 meses, ahora tu deuda es de \$400",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              marzoB = false;
                              marzo = 50;
                              preferencias.guardarPrecioCuartoMes(marzo);
                              preferencias.guardarBoolMes('04', marzoB);
                            });
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo ABRIL
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Abril',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: abrilB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 15),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('5'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: abrilB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $abril',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: abrilB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $abril',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: abrilB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('05'),
                  builder: (builder, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (abrilB == false) {
                              setState(() {
                                abrilB = true;
                                abril = 0;
                                preferencias.guardarPrecioQuintoMes(abril);
                                preferencias.guardarBoolMes('05', abrilB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste cinco de los 12 meses, ahora tu deuda es de \$350",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                abrilB = false;
                                abril = 50;
                                preferencias.guardarPrecioQuintoMes(abril);
                                preferencias.guardarBoolMes('05', abrilB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: abrilB,
                          onChanged: (_) {
                            if (abrilB == false) {
                              setState(() {
                                abrilB = true;
                                abril = 0;
                                preferencias.guardarPrecioQuintoMes(abril);
                                preferencias.guardarBoolMes('05', abrilB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste cinco de los 12 meses, ahora tu deuda es de \$350",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                abrilB = false;
                                abril = 50;
                                preferencias.guardarPrecioQuintoMes(abril);
                                preferencias.guardarBoolMes('05', abrilB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: abrilB,
                        onChanged: (_) {
                          if (abrilB == false) {
                            setState(() {
                              abrilB = true;
                              abril = 0;
                              preferencias.guardarPrecioQuintoMes(abril);
                              preferencias.guardarBoolMes('05', abrilB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste cinco de los 12 meses, ahora tu deuda es de \$350",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              abrilB = false;
                              abril = 50;
                              preferencias.guardarPrecioQuintoMes(abril);
                              preferencias.guardarBoolMes('05', abrilB);
                            });
                          }
                        },
                      );
                    }
                  })
            ],
          ),
        ),
        //todo MAYO
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mayo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: mayoB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('6'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: mayoB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $mayo',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: mayoB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $mayo',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: mayoB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('06'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (mayoB == false) {
                              setState(() {
                                mayoB = true;
                                mayo = 0;
                                preferencias.guardarPrecioSextoMes(mayo);
                                preferencias.guardarBoolMes('06', mayoB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste seis de los 12 meses, ahora tu deuda es de \$300",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                mayoB = false;
                                mayo = 50;
                                preferencias.guardarPrecioSextoMes(mayo);
                                preferencias.guardarBoolMes('06', mayoB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: mayoB,
                          onChanged: (_) {
                            if (mayoB == false) {
                              setState(() {
                                mayoB = true;
                                mayo = 0;
                                preferencias.guardarPrecioSextoMes(mayo);
                                preferencias.guardarBoolMes('06', mayoB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste seis de los 12 meses, ahora tu deuda es de \$300",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                mayoB = false;
                                mayo = 50;
                                preferencias.guardarPrecioSextoMes(mayo);
                                preferencias.guardarBoolMes('06', mayoB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: mayoB,
                        onChanged: (_) {
                          if (mayoB == false) {
                            setState(() {
                              mayoB = true;
                              mayo = 0;
                              preferencias.guardarPrecioSextoMes(mayo);
                              preferencias.guardarBoolMes('06', mayoB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste seis de los 12 meses, ahora tu deuda es de \$300",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              mayoB = false;
                              mayo = 50;
                              preferencias.guardarPrecioSextoMes(mayo);
                              preferencias.guardarBoolMes('06', mayoB);
                            });
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo JUNIO
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Junio',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: junioB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 15),
                  FutureBuilder(
                    future: preferencias.obtenerValorMes('7'),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if (snapshot.data != null) {
                          var respuesta = snapshot.data;
                          return Text(
                            '\$ $respuesta',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: junioB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        } else {
                          return Text(
                            '\$ $junio',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: junioB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      } else {
                        return Text(
                          '\$ $junio',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: junioB == false
                                ? TextDecoration.none
                                : TextDecoration.lineThrough,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('07'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          onChanged: (_) {
                            if (junioB == false) {
                              setState(() {
                                junioB = true;
                                junio = 0;
                                preferencias.guardarPrecioSeptimoMes(junio);
                                preferencias.guardarBoolMes('07', junioB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste siete de los 12 meses, ahora tu deuda es de \$250",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                junioB = false;
                                junio = 50;
                                preferencias.guardarPrecioSeptimoMes(junio);
                                preferencias.guardarBoolMes('07', junioB);
                              });
                            }
                          },
                          value: data,
                        );
                      } else {
                        return Checkbox(
                          onChanged: (_) {
                            if (junioB == false) {
                              setState(() {
                                junioB = true;
                                junio = 0;
                                preferencias.guardarPrecioSeptimoMes(junio);
                                preferencias.guardarBoolMes('07', junioB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste siete de los 12 meses, ahora tu deuda es de \$250",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                junioB = false;
                                junio = 50;
                                preferencias.guardarPrecioSeptimoMes(junio);
                                preferencias.guardarBoolMes('07', junioB);
                              });
                            }
                          },
                          value: junioB,
                        );
                      }
                    } else {
                      return Checkbox(
                        onChanged: (_) {
                          if (junioB == false) {
                            setState(() {
                              junioB = true;
                              junio = 0;
                              preferencias.guardarPrecioSeptimoMes(junio);
                              preferencias.guardarBoolMes('07', junioB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste siete de los 12 meses, ahora tu deuda es de \$250",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              junioB = false;
                              junio = 50;
                              preferencias.guardarPrecioSeptimoMes(junio);
                              preferencias.guardarBoolMes('07', junioB);
                            });
                          }
                        },
                        value: junioB,
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo JULIO
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Julio',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: julioB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 15),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('8'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: julioB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $julio',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: julioB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $julio',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: julioB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('08'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (julioB == false) {
                              setState(() {
                                julioB = true;
                                julio = 0;
                                preferencias.guardarPrecioOctavoMes(julio);
                                preferencias.guardarBoolMes('08', julioB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste ocho de los 12 meses, ahora tu deuda es de \$200",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                julioB = false;
                                julio = 50;
                                preferencias.guardarPrecioOctavoMes(julio);
                                preferencias.guardarBoolMes('08', julioB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: julioB,
                          onChanged: (_) {
                            if (julioB == false) {
                              setState(() {
                                julioB = true;
                                julio = 0;
                                preferencias.guardarPrecioOctavoMes(julio);
                                preferencias.guardarBoolMes('08', julioB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste ocho de los 12 meses, ahora tu deuda es de \$200",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                julioB = false;
                                julio = 50;
                                preferencias.guardarPrecioOctavoMes(julio);
                                preferencias.guardarBoolMes('08', julioB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: julioB,
                        onChanged: (_) {
                          if (julioB == false) {
                            setState(() {
                              julioB = true;
                              julio = 0;
                              preferencias.guardarPrecioOctavoMes(julio);
                              preferencias.guardarBoolMes('08', julioB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste ocho de los 12 meses, ahora tu deuda es de \$200",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              julioB = false;
                              julio = 50;
                              preferencias.guardarPrecioOctavoMes(julio);
                              preferencias.guardarBoolMes('08', julioB);
                            });
                          }
                        },
                      );
                    }
                  })
            ],
          ),
        ),
        //todo AGOSTO
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Agosto',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: agostoB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 15),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('9'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: agostoB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $agosto',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: agostoB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $agosto',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: agostoB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('09'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (agostoB == false) {
                              setState(() {
                                agostoB = true;
                                agosto = 0;
                                preferencias.guardarPrecioNovenoMes(agosto);
                                preferencias.guardarBoolMes('09', agostoB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste nueve de los 12 meses, ahora tu deuda es de \$150",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                agostoB = false;
                                agosto = 50;
                                preferencias.guardarPrecioNovenoMes(agosto);
                                preferencias.guardarBoolMes('09', agostoB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: agostoB,
                          onChanged: (_) {
                            if (agostoB == false) {
                              setState(() {
                                agostoB = true;
                                agosto = 0;
                                preferencias.guardarPrecioNovenoMes(agosto);
                                preferencias.guardarBoolMes('09', agostoB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste nueve de los 12 meses, ahora tu deuda es de \$150",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                agostoB = false;
                                agosto = 50;
                                preferencias.guardarPrecioNovenoMes(agosto);
                                preferencias.guardarBoolMes('09', agostoB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: agostoB,
                        onChanged: (_) {
                          if (agostoB == false) {
                            setState(() {
                              agostoB = true;
                              agosto = 0;
                              preferencias.guardarPrecioNovenoMes(agosto);
                              preferencias.guardarBoolMes('09', agostoB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste nueve de los 12 meses, ahora tu deuda es de \$150",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              agostoB = false;
                              agosto = 50;
                              preferencias.guardarPrecioNovenoMes(agosto);
                              preferencias.guardarBoolMes('09', agostoB);
                            });
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo SEPTIEMBRE
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Septiembre',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: septiembreB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 15),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('10'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: septiembreB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $septiembre',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: septiembreB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $septiembre',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: septiembreB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('010'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (septiembreB == false) {
                              setState(() {
                                septiembreB = true;
                                septiembre = 0;
                                preferencias.guardarPrecioDecimoMes(septiembre);
                                preferencias.guardarBoolMes('010', septiembreB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste diez de los 12 meses, ahora tu deuda es de \$100",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                septiembreB = false;
                                septiembre = 50;
                                preferencias.guardarPrecioDecimoMes(septiembre);
                                preferencias.guardarBoolMes('010', septiembreB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: septiembreB,
                          onChanged: (_) {
                            if (septiembreB == false) {
                              setState(() {
                                septiembreB = true;
                                septiembre = 0;
                                preferencias.guardarPrecioDecimoMes(septiembre);
                                preferencias.guardarBoolMes('010', septiembreB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste diez de los 12 meses, ahora tu deuda es de \$100",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                septiembreB = false;
                                septiembre = 50;
                                preferencias.guardarPrecioDecimoMes(septiembre);
                                preferencias.guardarBoolMes('010', septiembreB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: septiembreB,
                        onChanged: (_) {
                          if (septiembreB == false) {
                            setState(() {
                              septiembreB = true;
                              septiembre = 0;
                              preferencias.guardarPrecioDecimoMes(septiembre);
                              preferencias.guardarBoolMes('010', septiembreB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste diez de los 12 meses, ahora tu deuda es de \$100",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              septiembreB = false;
                              septiembre = 50;
                              preferencias.guardarPrecioDecimoMes(septiembre);
                              preferencias.guardarBoolMes('010', septiembreB);
                            });
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo OCTUBRE
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Octubre',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: octubreB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 15),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('11'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: octubreB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $octubre',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: octubreB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $octubre',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: octubreB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('011'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (octubreB == false) {
                              setState(() {
                                octubreB = true;
                                octubre = 0;
                                preferencias
                                    .guardarPrecioDecimoPimerMes(octubre);
                                preferencias.guardarBoolMes('011', octubreB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste once de los 12 meses, ahora tu deuda es de \$50",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                octubreB = false;
                                octubre = 50;
                                preferencias
                                    .guardarPrecioDecimoPimerMes(octubre);
                                preferencias.guardarBoolMes('011', octubreB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: octubreB,
                          onChanged: (_) {
                            if (octubreB == false) {
                              setState(() {
                                octubreB = true;
                                octubre = 0;
                                preferencias
                                    .guardarPrecioDecimoPimerMes(octubre);
                                preferencias.guardarBoolMes('011', octubreB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Avance",
                                message:
                                    "Cancelaste once de los 12 meses, ahora tu deuda es de \$50",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            } else {
                              setState(() {
                                octubreB = false;
                                octubre = 50;
                                preferencias
                                    .guardarPrecioDecimoPimerMes(octubre);
                                preferencias.guardarBoolMes('011', octubreB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: octubreB,
                        onChanged: (_) {
                          if (octubreB == false) {
                            setState(() {
                              octubreB = true;
                              octubre = 0;
                              preferencias.guardarPrecioDecimoPimerMes(octubre);
                              preferencias.guardarBoolMes('011', octubreB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Avance",
                              message:
                                  "Cancelaste once de los 12 meses, ahora tu deuda es de \$50",
                              duration: Duration(seconds: 3),
                            )..show(context);
                          } else {
                            setState(() {
                              octubreB = false;
                              octubre = 50;
                              preferencias.guardarPrecioDecimoPimerMes(octubre);
                              preferencias.guardarBoolMes('011', octubreB);
                            });
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
        //todo NOVIEMBRE
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Noviembre',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: noviembreB
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 15),
                  FutureBuilder(
                      future: preferencias.obtenerValorMes('12'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data != null) {
                            var respuesta = snapshot.data;
                            return Text(
                              '\$ $respuesta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: noviembreB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          } else {
                            return Text(
                              '\$ $noviembre',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: noviembreB == false
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough,
                              ),
                            );
                          }
                        } else {
                          return Text(
                            '\$ $noviembre',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: noviembreB == false
                                  ? TextDecoration.none
                                  : TextDecoration.lineThrough,
                            ),
                          );
                        }
                      }),
                ],
              ),
              FutureBuilder(
                  future: preferencias.obtenerValorBool('012'),
                  builder: (context, AsyncSnapshot<bool?> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        final data = snapshot.data;
                        return Checkbox(
                          value: data,
                          onChanged: (_) {
                            if (noviembreB == false) {
                              setState(() {
                                noviembreB = true;
                                noviembre = 0;
                                preferencias
                                    .guardarPrecioDecimoSegundoMes(noviembre);
                                preferencias.guardarBoolMes('012', noviembreB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Finalmente",
                                message:
                                    "Completaste todos los pagos que tenías pendiente, ya puedes desinstalar esta huevada.",
                                duration: Duration(seconds: 5),
                              )..show(context);
                            } else {
                              setState(() {
                                noviembreB = false;
                                noviembre = 50;
                                preferencias
                                    .guardarPrecioDecimoSegundoMes(noviembre);
                                preferencias.guardarBoolMes('012', noviembreB);
                              });
                            }
                          },
                        );
                      } else {
                        return Checkbox(
                          value: noviembreB,
                          onChanged: (_) {
                            if (noviembreB == false) {
                              setState(() {
                                noviembreB = true;
                                noviembre = 0;
                                preferencias
                                    .guardarPrecioDecimoSegundoMes(noviembre);
                                preferencias.guardarBoolMes('012', noviembreB);
                              });
                              Flushbar(
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
                                borderRadius: BorderRadius.circular(50),
                                icon: Icon(Icons.monetization_on_outlined,
                                    color: Colors.white),
                                title: "Finalmente",
                                message:
                                    "Completaste todos los pagos que tenías pendiente, ya puedes desinstalar esta huevada.",
                                duration: Duration(seconds: 5),
                              )..show(context);
                            } else {
                              setState(() {
                                noviembreB = false;
                                noviembre = 50;
                                preferencias
                                    .guardarPrecioDecimoSegundoMes(noviembre);
                                preferencias.guardarBoolMes('012', noviembreB);
                              });
                            }
                          },
                        );
                      }
                    } else {
                      return Checkbox(
                        value: noviembreB,
                        onChanged: (_) {
                          if (noviembreB == false) {
                            setState(() {
                              noviembreB = true;
                              noviembre = 0;
                              preferencias
                                  .guardarPrecioDecimoSegundoMes(noviembre);
                              preferencias.guardarBoolMes('012', noviembreB);
                            });
                            Flushbar(
                              margin: EdgeInsets.only(
                                  bottom: 30, left: 10, right: 10),
                              borderRadius: BorderRadius.circular(50),
                              icon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.white),
                              title: "Finalmente",
                              message:
                                  "Completaste todos los pagos que tenías pendiente, ya puedes desinstalar esta huevada.",
                              duration: Duration(seconds: 5),
                            )..show(context);
                          } else {
                            setState(() {
                              noviembreB = false;
                              noviembre = 50;
                              preferencias
                                  .guardarPrecioDecimoSegundoMes(noviembre);
                              preferencias.guardarBoolMes('012', noviembreB);
                            });
                          }
                        },
                      );
                    }
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
