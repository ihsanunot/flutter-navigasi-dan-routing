import 'package:blank_resto/widgets/screen_utama.dart';
import 'package:flutter/material.dart';
import 'widgets/another_screen.dart';
import 'widgets/replacement_screen.dart';
import 'widgets/return_data.dart';
import 'widgets/second_screen.dart';
import 'widgets/with_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resto Blank',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Quicksand',
      ),
      initialRoute: '/', // utama
      routes: {
        // rute screen
        '/': (context) => const ScreenUtama(),
        '/secondScreen': (context) => const ScreenKedua(),
        '/secondScreenWithData': (context) => ScreenKeduaDanData(
            ModalRoute.of(context)?.settings.arguments as String),
        '/returnDataScreen': (context) => const ReturnDataScreen(),
        'replacementScreen': (context) => const ReplacementScreen(),
        '/anotherScreen': (context) => const AnotherScreen(),
      },
    );
  }
}
