class Agent {
  final String? title;
  final String? roleIcon;
  final String? role;
  final String? agentImage;
  Agent({
    this.roleIcon,
    this.role,
    this.agentImage,
    this.title,
  });

  factory Agent.fromJson(String, dynamic json) {
    return Agent(
        title: json['title'],
        roleIcon: json['role_icon']['url'],
        role: json['role'],
        agentImage: json['agent_image']['url']);
  }

  static List<Agent> agentsFromsnapshot(List snapshot) {
    return snapshot.map((data) {
      return Agent.fromJson(String, data);
    }).toList();
  }

  @override
  String toString() {
    return 'Agent {title: $title, role_icon: $roleIcon , role: $role, agent_image: $agentImage }';
  }
}
