
import 'package:flutter/material.dart';

class minhaHome extends StatefulWidget {
  const minhaHome({Key? key}) : super(key: key);

  @override
  _minhaHomeState createState() => _minhaHomeState();
}

class _minhaHomeState extends State<minhaHome> {

  TextEditingController v1 = TextEditingController();
  TextEditingController v2 = TextEditingController();
  String x = 'Resultado';

  void calcular() {
    setState(() {
      double a = double.parse(v1.text);
      double b = double.parse(v1.text);
      double resultado = a+b;
      x = 'Resultado ${resultado.toStringAsFixed(2)}';
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.refresh)),
        ],
        title: Text('Calcular'),),
      body:
      Padding(
        padding: const EdgeInsets.only(right: 30,left: 30),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.person, size: 40, color: Colors.cyanAccent,),
            TextField(
              maxLength: 2,
              keyboardType: TextInputType.number,
              decoration: (

                  InputDecoration(
                    icon: Icon(Icons.person),
                  labelStyle: TextStyle(

                  ),
                  labelText: 'Digite seu numero'
                )
              ),
            ),
            TextField(

              maxLength: 2,
              keyboardType: TextInputType.number,
              decoration: (

                  InputDecoration(
                      icon: Icon(Icons.password),
                      labelStyle: TextStyle(

                      ),
                      labelText: 'Digite sua senha'
                  )
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                  fixedSize: Size(0, 50),
                ),
                onPressed: calcular,
                child: Text('Calcular', style: TextStyle(color: Colors.white, fontSize: 20),)),
            Text('Resultado'),

          ],
        ),
      ),
    );
  }


}