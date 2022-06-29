import 'package:medicuity_mvp/models/tui.dart';

class Term {
  final String name;
  final List<String> aliases;
  final String conceptId;
  final int start;
  final int end;
  final List<String> types;
  final String definition;
  late Tui tui;

  Term({
    required this.name,
    required this.conceptId,
    required this.start,
    required this.end,
    required this.types,
    required this.aliases,
    required this.definition,
  }) {
    print(name);
    Map<String, String> raw_tui_obj = tui_map[types[0]];
    print(raw_tui_obj);
    this.tui = Tui(
        code: raw_tui_obj["code"]!,
        group: raw_tui_obj["group"]!,
        tui: raw_tui_obj["tui"]!,
        desc: raw_tui_obj["desc"]!,
        color: tuiCode_to_color[raw_tui_obj["code"]]!);
  }

  factory Term.fromJson(Map<String, dynamic> json) {
    print(json);
    return Term(
        name: json['name'],
        conceptId: json['concept_id'],
        aliases: json['aliases'].cast<String>(),
        types: json['types'].cast<String>(),
        start: json['start'],
        end: json['end'],
        definition: json['definition']);
  }
}
