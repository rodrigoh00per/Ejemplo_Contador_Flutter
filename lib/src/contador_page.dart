import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 25);
  int _contador = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicacion contador"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de Clicks",
              style: _estiloTexto,
            ),
            Text(
              "${this._contador}",
              style: _estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButton: this._crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero), //este es el de resetear a 0
          onPressed: this.reset,
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: this.sumar,
        ),
        SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: this.restar,
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }

  void sumar() {
    setState(() => this._contador++);
  }

  void restar() {
    if (this._contador == 0) {
    } else {
      setState(() => this._contador--);
    }
  }

  void reset() {
    setState(() => this._contador = 0);
  }
}
