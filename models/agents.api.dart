import 'dart:convert';
import 'package:valoran_app/models/agents.dart';
import 'package:http/http.dart' as http;

class AgentApi {
  static Future<List<Agent>> getAgent() async {
    var uri = Uri.https(
        'valorant-agents-maps-arsenal.p.rapidapi.com', '/agents/en-us');
    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "valorant-agents-maps-arsenal.p.rapidapi.com",
      "X-RapidAPI-Key": "a84200a857msh1b37f92ddf9b2a6p17bf1ejsn1a695bb97194",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['agents']) {
      _temp.add(i['title']['role']['role_icon']['agent_image']);
    }

    return Agent.agentsFromsnapshot(_temp);
  }
}
