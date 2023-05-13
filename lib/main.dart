import 'package:flutter/material.dart';
import 'package:workmanager_example/my_workmanager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  intializeWorkManager();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorkManager Example',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(

      child:  Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'This is an Example App For Showing Workmanager usage in Flutter by showing notification in every 15 min.',
          textAlign: TextAlign.center,
        ),
      ),
      ),
    );
  }
}
