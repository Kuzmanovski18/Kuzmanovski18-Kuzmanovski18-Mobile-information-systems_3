import 'package:flutter/material.dart';
import 'screens/joke_types.dart';
import 'screens/random_joke.dart';
import 'screens/favorite_jokes.dart';
import 'models/joke.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'services/NotificationService.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await NotificationService().initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Jokes App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const JokeTypesScreen(),
      routes: {
        '/random': (context) => const RandomJokeScreen(),
        '/favorites': (context) => FavoriteJokesScreen(favoriteJokes: favoriteJokes),
      },
    );
  }
}

List<Joke> favoriteJokes = [];