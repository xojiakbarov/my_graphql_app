import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_graphql_app/graphql_config.dart';
import 'package:my_graphql_app/seacrch_country.dart';

import 'anime/anime.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final service = GraphQLService();

  runApp(MainApp(
    client: ValueNotifier(service.client()),
  )); 
}

class MainApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;

  const MainApp({
    required this.client,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimeListPage(),
      ),
    );
  }
}



