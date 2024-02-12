import 'package:graphql_flutter/graphql_flutter.dart';

const countrys = 'https://countries.trevorblades.com/graphql';
const anime = 'https://graphql.anilist.co';
class GraphQLService {
  final httpLink = HttpLink(anime); // -> Graph Api

  GraphQLClient client() =>
      GraphQLClient(link: httpLink, cache: GraphQLCache());
}
