import 'package:flutter/material.dart';

class Contadores extends StatefulWidget {
  @override
  State<Contadores> createState() => _ContadoresState();
}

class _ContadoresState extends State<Contadores> {
  int iCont1 = 0;
  int iCont2 = 0;
  int iCont3 = 0;
  int iCont4 = 0;
  int iCont5 = 0;
  int iSuma = 0;

  void sumarContadores() {
    iSuma = (iCont1 + iCont2 + iCont3 + iCont4 + iCont5);
  }

  void inicializarContadores() {
    iCont1 = 0;
    iCont2 = 0;
    iCont3 = 0;
    iCont4 = 0;
    iCont5 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Juego de Contadores"),
          centerTitle: true,
          backgroundColor: Color(0xfffcf3cf),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          elevation: 5.0,
          shadowColor: Color(0xffba4a00),
        ),
        body: Container(
          color: Color(0xffaed6f1),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Sumatoria de Contadores",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        Text(
                          iSuma.toString(),
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.only(bottom: 15.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Contador 1",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        Text(
                          iCont1.toString(),
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            iCont1 += 1;
                            sumarContadores();
                            setState(() {});
                          },
                          child: Text(
                            "+1",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Contador 2",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        Text(
                          iCont2.toString(),
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              iCont2 += 1;
                              sumarContadores();
                              setState(() {});
                            },
                            child: Text(
                              "+1",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.only(bottom: 15.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Contador 3",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        Text(
                          iCont3.toString(),
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              iCont3 += 1;
                              sumarContadores();
                              setState(() {});
                            },
                            child: Text(
                              "+1",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Contador 4",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        Text(
                          iCont4.toString(),
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              iCont4 += 1;
                              sumarContadores();
                              setState(() {});
                            },
                            child: Text(
                              "+1",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.only(bottom: 15.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Contador 5",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        Text(
                          iCont5.toString(),
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              iCont5 += 1;
                              sumarContadores();
                              setState(() {});
                            },
                            child: Text(
                              "+1",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            inicializarContadores();
            sumarContadores();
            setState(() {});
          },
          child: Text("Reset"),
        ),
      ),
    );
  }
}
