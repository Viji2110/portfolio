import 'package:flutter/material.dart';
import '../components/knowledge_text.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'Java'),
        KnowledgeText(knowledge: 'C'),
        KnowledgeText(knowledge: 'C++'),
        KnowledgeText(knowledge: 'Html/Css'),
        KnowledgeText(knowledge: 'Bootstrap'),
      ],
    );
  }
}
