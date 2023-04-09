import 'package:flutter/material.dart';
import 'package:football/providers/data.dart';
import 'package:football/screens/home.dart';
import 'package:football/screens/summary.dart';
import 'package:provider/provider.dart';

double w = 50;
double h = 50;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Data(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Builder(builder: (context) {
          w = MediaQuery.of(context).size.width;
          h = MediaQuery.of(context).size.height;

          return
          //  SummaryPage();
          HomePage();
        }),
      ),
    );
  }
}
