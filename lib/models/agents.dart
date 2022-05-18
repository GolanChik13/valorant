import 'package:json_annotation/json_annotation.dart';

part 'agents.g.dart';

@JsonSerializable()
class Agent {
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'role_icon')
  final String? roleIcon;
  @JsonKey(name: 'role')
  final String? role;
  @JsonKey(name: 'agent_image')
  final String? agentImage;
  Agent({
    this.roleIcon,
    this.role,
    this.agentImage,
    this.title,
  });

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);
  Map<String, dynamic> toJson() => _$AgentToJson(this);

  @override
  String toString() {
    return 'Agent {title: $title, role_icon: $roleIcon , role: $role, agent_image: $agentImage }';
  }
}
