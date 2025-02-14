import 'package:flutter/material.dart';

import 'calculadora.dart';
  


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'CALCULADORA ULTRA MEGA BLASTER DO ESTEVÃO'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child:Container(
                //alignment: Alignment.center,
                //color:  Colors.amber,
              //child: Text(
              //'Layout Superior',
              ),),
              Expanded(
                flex: 8 ,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      //alignment: Alignment.center,
                      //color: Colors.pink,
                      //child: Text('Primeira Coluna'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      //color: Colors.green,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey, 
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black, 
                            blurRadius: 10, 
                            offset: Offset(0, 5)
                            )]
                      ),
                      child: Calculadora(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //alignment: Alignment.center,
                      //color: Colors.pink,
                      //child: Text('Terceira Coluna'),
                    ),
                  ),
              ],),),
               Expanded(
                flex: 2 ,
              child: Container(
                //alignment: Alignment.center,
                //color:  Colors.blue,
              //child: Text(
              //'Layout Inferior',
              ),),
          ],
      ))
      
      ,floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

