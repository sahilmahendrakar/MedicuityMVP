import 'package:flutter/material.dart';
import 'models/term.dart';

class ContextCard extends StatelessWidget {
  ContextCard({Key? key, required this.term}) : super(key: key);

  final Term term;

  TextStyle defaultStyle = TextStyle(fontSize: 20.0);
  TextStyle headerStyle =
      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1500.0, // Really jank pls fix this in future
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Name: ",
                      style: headerStyle,
                    ),
                    Text(
                      term.name,
                      style: defaultStyle,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Concept ID: ",
                      style: headerStyle,
                    ),
                    Text(
                      term.conceptId,
                      style: defaultStyle,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Aliases: ",
                      style: headerStyle,
                    ),
                    term.aliases.length > 0
                        ? Text(
                            term.aliases[0],
                            style: defaultStyle,
                          )
                        : Container(),
                    term.aliases.length > 1
                        ? Text(
                            ", " + term.aliases[1],
                            style: defaultStyle,
                          )
                        : Container(),
                    term.aliases.length > 2
                        ? Text(
                            ", " + term.aliases[2],
                            style: defaultStyle,
                          )
                        : Container()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Definition: ",
                      style: headerStyle,
                    ),
                    Flexible(child: Text(
                        term.definition,
                        style: defaultStyle,
                      ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Types: ",
                      style: headerStyle,
                    ),
                    term.types.length > 0
                        ? Text(
                            term.types[0],
                            style: defaultStyle,
                          )
                        : Container(),
                    term.types.length > 1
                        ? Text(
                            ", " + term.types[1],
                            style: defaultStyle,
                          )
                        : Container(),
                    term.types.length > 2
                        ? Text(
                            ", " + term.types[2],
                            style: defaultStyle,
                          )
                        : Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
