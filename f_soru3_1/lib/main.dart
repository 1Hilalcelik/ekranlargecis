import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: anaekran(),));
}

class anaekran extends StatefulWidget {
  const anaekran({super.key});

  @override
  State<anaekran> createState() => _anaekranState();
}

class _anaekranState extends State<anaekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Ekran'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Text('Ana Ekran İçeriği'),ElevatedButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const digerekran(),));
          },
          child: Text('Diğer Ekrana Git')),
        ],
      ),
    );
  }
}

class digerekran extends StatefulWidget {
  const digerekran({super.key});

  @override
  State<digerekran> createState() => _digerekranState();
}

class _digerekranState extends State<digerekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
       title: Text('Diğer Ekran'),
        backgroundColor: Colors.teal,
        
      ),
      body: Column(
        children: [
          Text('diğer ekran burası'),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const son(),));
            },
          child: Text('sona doğru adım adım'))],
    ),
      );
        
  }
}
class son extends StatefulWidget {
  const son({super.key});

  @override
  State<son> createState() => _sonState();
}

class _sonState extends State<son> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (title: Text('son ekran inşallah'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text('son ekran içeriği inşallah'),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Diğer Ekrana Dön')),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const anaekran(),));
          },
          child: Text('Ana Ekrana Git')
      ),
        ],
      ),
      ); 
  }
}