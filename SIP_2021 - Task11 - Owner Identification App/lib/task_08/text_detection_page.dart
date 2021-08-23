import 'package:flutter/material.dart';
import 'package:task_11/widget/text_recognition_widget.dart';

class TextDetectionPage extends StatefulWidget {
  final String title;

  const TextDetectionPage({
    @required this.title,
  });

  @override
  _TextDetectionPageState createState() => _TextDetectionPageState();
}

class _TextDetectionPageState extends State<TextDetectionPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const SizedBox(height: 25),
          TextRecognitionWidget(),
          const SizedBox(height: 15),
        ],
      ),
    ),
  );
}