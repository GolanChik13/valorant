import 'dart:convert';
import 'package:http/http.dart' as http;

import 'agents.dart';

class AgentApi {
  static Future<List<Agent>> getAgent() async {
    var uri = Uri.https(
        'valorant-agents-maps-arsenal.p.rapidapi.com', '/agents/en-us');
    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "valorant-agents-maps-arsenal.p.rapidapi.com",
      "X-RapidAPI-Key": "a84200a857msh1b37f92ddf9b2a6p17bf1ejsn1a695bb97194",
      "useQueryString": "true"
    });

    dynamic data = jsonDecode(response.body);
    return (data['agents'] as List<dynamic>)
        .map((e) => Agent.fromJson(e))
        .toList();
  }
}
