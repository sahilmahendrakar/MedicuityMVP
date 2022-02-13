class Term {
  final String name;
  final List<String> aliases;
  final String conceptId;
  final int start;
  final int end;
  final List<String> types;
  final String definition;

  const Term({
    required this.name,
    required this.conceptId,
    required this.start,
    required this.end,
    required this.types,
    required this.aliases,
    required this.definition
  });

  factory Term.fromJson(Map<String, dynamic> json) {
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