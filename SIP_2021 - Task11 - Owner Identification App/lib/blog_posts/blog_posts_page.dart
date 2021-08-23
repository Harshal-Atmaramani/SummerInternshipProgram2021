import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogPostsPage extends StatefulWidget {
  final String blogUrl;

  const BlogPostsPage({Key key, this.blogUrl}) : super(key: key);

  @override
  _BlogPostsPageState createState() => _BlogPostsPageState();
}

class _BlogPostsPageState extends State<BlogPostsPage> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Blog Post"),backgroundColor: Colors.redAccent,),
      body: WebView(
        initialUrl: widget.blogUrl,
      ),
    );
  }
}
