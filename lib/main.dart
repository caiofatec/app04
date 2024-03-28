// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      home: PrincipalView(),
    );
  }
}

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  //
  // ATRIBUTOS
  //

  //Identificador do formulário
  var formKey = GlobalKey<FormState>();

  // Controladores dos campos de texto
  var txtValor1 = TextEditingController();
  var txtValor2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              Icon(Icons.calculate, color: Colors.white),
              SizedBox(width: 16.0),
              Text(
                'Calculadora',
                style: TextStyle(color: Colors.white, fontFamily: 'Verdana'),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(50.0, 80.0, 50.0, 80.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                //
                // Imagem
                //
                Image.asset(
                  'lib/images/calculadora.png',
                  width: 200.0,
                  height: 200.0,
                ),
                SizedBox(height: 16.0),
                //
                // CAMPO DE TEXTO
                //
                TextFormField(
                  controller: txtValor1,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe um valor';
                    } else if (double.tryParse(value) == null) {
                      return 'Informe um valor numérico';
                    }

                    // Retornar null significa que o campo
                    // foi validado com sucesso!
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Valor 1',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: txtValor2,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe um valor';
                    } else if (double.tryParse(value) == null) {
                      return 'Informe um valor numérico';
                    }

                    // Retornar null significa que o campo
                    // foi validado com sucesso!
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Valor 2',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade100,
                          foregroundColor: Colors.blue.shade900,
                          minimumSize: Size(80.0, 80.0)),
                      onPressed: () {
                        //
                        // Chamar os VALIDADORES
                        //
                        if (formKey.currentState!.validate()) {
                          // Os campos foram validados com sucesso!

                          //
                          // Recuperar as informações dos campos
                          //

                          setState(
                            () {
                              // Retornar o conteúdo do campo Valor 1
                              double v1 = double.parse(txtValor1.text);
                              // Retornar o conteúdo do campo Valor 2
                              double v2 = double.parse(txtValor2.text);
                              double resultado = v1 + v2;

                              // Exibir resultado
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Resultado: $resultado'),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade100,
                          foregroundColor: Colors.blue.shade900,
                          minimumSize: Size(80.0, 80.0)),
                      onPressed: () {
                        //
                        // Chamar os VALIDADORES
                        //
                        if (formKey.currentState!.validate()) {
                          // Os campos foram validados com sucesso!

                          //
                          // Recuperar as informações dos campos
                          //

                          setState(
                            () {
                              // Retornar o conteúdo do campo Valor 1
                              double v1 = double.parse(txtValor1.text);
                              // Retornar o conteúdo do campo Valor 2
                              double v2 = double.parse(txtValor2.text);
                              double resultado = v1 - v2;

                              // Exibir resultado
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Resultado: $resultado'),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade100,
                          foregroundColor: Colors.blue.shade900,
                          minimumSize: Size(80.0, 80.0)),
                      onPressed: () {
                        //
                        // Chamar os VALIDADORES
                        //
                        if (formKey.currentState!.validate()) {
                          // Os campos foram validados com sucesso!

                          //
                          // Recuperar as informações dos campos
                          //

                          setState(
                            () {
                              // Retornar o conteúdo do campo Valor 1
                              double v1 = double.parse(txtValor1.text);
                              // Retornar o conteúdo do campo Valor 2
                              double v2 = double.parse(txtValor2.text);
                              double resultado = v1 * v2;

                              // Exibir resultado
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Resultado: $resultado'),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: Text(
                        'x',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade100,
                          foregroundColor: Colors.blue.shade900,
                          minimumSize: Size(80.0, 80.0)),
                      onPressed: () {
                        //
                        // Chamar os VALIDADORES
                        //
                        if (formKey.currentState!.validate()) {
                          // Os campos foram validados com sucesso!

                          //
                          // Recuperar as informações dos campos
                          //

                          setState(
                            () {
                              // Retornar o conteúdo do campo Valor 1
                              double v1 = double.parse(txtValor1.text);
                              // Retornar o conteúdo do campo Valor 2
                              double v2 = double.parse(txtValor2.text);
                              double resultado = v1 / v2;

                              // Exibir resultado
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Resultado: $resultado'),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: Text(
                        '/',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
