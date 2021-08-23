import 'package:flutter/material.dart';
import 'package:task_11/blog_posts/blogs_home.dart';
import 'package:task_11/task_08/text_detection_page.dart';
import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftDrawer(),
      appBar: AppBar(title: Text("Task 11"),backgroundColor: Colors.redAccent,),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 50,),
          Container(
            // decoration:,
            child: Center(
              child: TextButton(
                child: Text('Task 08',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TextDetectionPage(title: 'Owner Details',);
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            // decoration:,
            child: Center(
              child: TextButton(
                child: Text('Blog Posts by Team',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BlogsHome();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],),
      ),
    );
  }
}
