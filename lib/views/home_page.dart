// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:valorant/views/widgets/agents.cards.dart';

import '../models/agents.api.dart';
import '../models/agents.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Agent> _agents;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();

    getAgents();
  }

  Future<void> getAgents() async {
    _agents = await AgentApi.getAgent();
    setState(() {
      isLoading = false;
    });
    print('the list$_agents');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Valorant Agents'),
            ],
          ),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _agents.length,
                itemBuilder: (context, index) {
                  return AgentCard(
                      title: _agents[index].title.toString(),
                      role: _agents[index].role.toString(),
                      roleIcon: _agents[index].roleIcon.toString(),
                      thumbnailUrl: _agents[index].agentImage.toString());
                },
              ));
  }
}
