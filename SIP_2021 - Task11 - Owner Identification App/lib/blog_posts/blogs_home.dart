import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task_11/blog_posts/blog_posts_page.dart';

class BlogsHome extends StatefulWidget {

  @override
  _BlogsHomeState createState() => _BlogsHomeState();
}

class _BlogsHomeState extends State<BlogsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blog Posts by Team"),backgroundColor: Colors.redAccent,),
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            children: [
              ExpandableNotifier(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 150,
                            child: Container(
                              child: Container(
                                child: Image.asset(
                                  'assets/images/blog_harshal.jpeg',
                                ),
                              ),
                            ),
                          ),
                          ScrollOnExpand(
                            scrollOnExpand: true,
                            scrollOnCollapse: false,
                            child: ExpandablePanel(
                              theme: const ExpandableThemeData(
                                headerAlignment: ExpandablePanelHeaderAlignment.center,
                                tapBodyToCollapse: true,
                              ),
                              header: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Harshal Atmaramani",
                                    style: Theme.of(context).textTheme.bodyText1,
                                  )),
                              collapsed: Text(
                                "Blog Posts",
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              expanded: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TextButton(
                                    child: Text('Confusion Matrix as a technique to understand Cyber Attacks and gain insights'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://harshal-atmaramani.medium.com/",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('JS — How can you be everywhere!'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://harshal-atmaramani.medium.com/js-how-can-you-be-everywhere-ff52098750bf",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              builder: (_, collapsed, expanded) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                  child: Expandable(
                                    collapsed: collapsed,
                                    expanded: expanded,
                                    theme: const ExpandableThemeData(crossFadePoint: 0),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              ExpandableNotifier(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 150,
                            child: Container(
                              child: Image.asset(
                                'assets/images/blog_suyash.jpeg',
                              ),
                            ),
                          ),
                          ScrollOnExpand(
                            scrollOnExpand: true,
                            scrollOnCollapse: false,
                            child: ExpandablePanel(
                              theme: const ExpandableThemeData(
                                headerAlignment: ExpandablePanelHeaderAlignment.center,
                                tapBodyToCollapse: true,
                              ),
                              header: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Suyash Dahake",
                                    style: Theme.of(context).textTheme.bodyText1,
                                  )),
                              collapsed: Text(
                                "Blog Posts",
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              expanded: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TextButton(
                                    child: Text('Cybercrime cases detection using Confusion Matrix'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://suyashdahake410.medium.com/cybercrime-cases-detection-using-confusion-matrix-a6c3a8215ff3",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Industry use cases of Java Script'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://suyashdahake410.medium.com/industry-use-cases-of-java-script-2678d2d8ed0f",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('K-mean clustering and its real use-case in the security domain'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://suyashdahake410.medium.com/k-mean-clustering-and-its-real-use-case-in-the-security-domain-731c5ffd8d17",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              builder: (_, collapsed, expanded) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                  child: Expandable(
                                    collapsed: collapsed,
                                    expanded: expanded,
                                    theme: const ExpandableThemeData(crossFadePoint: 0),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              ExpandableNotifier(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 150,
                            child: Container(
                              child: Container(
                                child: Image.asset(
                                  'assets/images/blog_nikhil.jpeg',
                                ),
                              ),
                            ),
                          ),
                          ScrollOnExpand(
                            scrollOnExpand: true,
                            scrollOnCollapse: false,
                            child: ExpandablePanel(
                              theme: const ExpandableThemeData(
                                headerAlignment: ExpandablePanelHeaderAlignment.center,
                                tapBodyToCollapse: true,
                              ),
                              header: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Nikhil Tidke",
                                    style: Theme.of(context).textTheme.bodyText1,
                                  )),
                              collapsed: Text(
                                "Blog Posts",
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              expanded: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TextButton(
                                    child: Text('K-Means Clustering and its Use Cases in Security Domain'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://nikhil-st8.medium.com/k-means-clustering-and-its-use-cases-in-security-domain-7bd6e78bfa6a",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Confusion Matrix & Cyber Crime'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://nikhil-st8.medium.com/confusion-matrix-cyber-crime-e3f588674370",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('JavaScript And its Industry Use-Cases'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://nikhil-st8.medium.com/javascript-and-its-industry-use-cases-da535158c769",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('GUI Application on Top of Docker'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://nikhil-st8.medium.com/gui-application-on-top-of-docker-2400ff2bbd84",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Containerizing ML Model in “Docker”'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://nikhil-st8.medium.com/contenarizing-ml-model-e9e4371aa3d0",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              builder: (_, collapsed, expanded) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                  child: Expandable(
                                    collapsed: collapsed,
                                    expanded: expanded,
                                    theme: const ExpandableThemeData(crossFadePoint: 0),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              ExpandableNotifier(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 150,
                            child: Container(
                              child: Container(
                                child: Image.asset(
                                  'assets/images/blog_deepali.jpeg',
                                ),
                              ),
                            ),
                          ),
                          ScrollOnExpand(
                            scrollOnExpand: true,
                            scrollOnCollapse: false,
                            child: ExpandablePanel(
                              theme: const ExpandableThemeData(
                                headerAlignment: ExpandablePanelHeaderAlignment.center,
                                tapBodyToCollapse: true,
                              ),
                              header: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Deepali Ghadia",
                                    style: Theme.of(context).textTheme.bodyText1,
                                  )),
                              collapsed: Text(
                                "Blog Posts",
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              expanded: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TextButton(
                                    child: Text('K-means Clustering and its Applications'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://deepalinghadia1606.medium.com/k-means-clustering-and-its-applications-213900837799",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Confusion Matrix and its two types of errors.'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://deepalinghadia1606.medium.com/confusion-matrix-and-its-two-types-of-errors-62d0454a094d",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Use case of JavaScript'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://deepalinghadia1606.medium.com/use-case-of-javascript-5297c088a17f",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Industry Use Case of RedHat OpenShift'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://deepalinghadia1606.medium.com/industry-use-case-of-redhat-openshift-fbf4e7a7582e",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Powering Preply’s online education platform with CI/CD0'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://deepalinghadia1606.medium.com/powering-preplys-online-education-platform-with-ci-cd0-e668d09eaa0f",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Nokia: Enabling 5G and DevOps at a Telecom Company with Kubernetes.'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://deepalinghadia1606.medium.com/nokia-enabling-5g-and-devops-at-a-telecom-company-with-kubernetes-6d1688b6b484",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Create a setup to ping Google but not Facebook.'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://deepalinghadia1606.medium.com/create-a-setup-to-ping-google-but-not-facebook-4085c5800b5d",);
                                          },
                                        ),
                                      );
                                    },
                                  ),

                                ],
                              ),
                              builder: (_, collapsed, expanded) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                  child: Expandable(
                                    collapsed: collapsed,
                                    expanded: expanded,
                                    theme: const ExpandableThemeData(crossFadePoint: 0),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              ExpandableNotifier(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 150,
                            child: Container(
                              child: Container(
                                child: Image.asset(
                                  'assets/images/blog_shreya.jpeg',
                                ),
                              ),
                            ),
                          ),
                          ScrollOnExpand(
                            scrollOnExpand: true,
                            scrollOnCollapse: false,
                            child: ExpandablePanel(
                              theme: const ExpandableThemeData(
                                headerAlignment: ExpandablePanelHeaderAlignment.center,
                                tapBodyToCollapse: true,
                              ),
                              header: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Shreya Khedkar"
                                        "",
                                    style: Theme.of(context).textTheme.bodyText1,
                                  )),
                              collapsed: Text(
                                "Blog Posts",
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              expanded: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TextButton(
                                    child: Text('k-mean clustering and its use cases.'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://medium.com/@shreyakhedkar05/task-10-f849dc1a4ab7",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('What is a Confusion matrix??'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://medium.com/@shreyakhedkar05/task-05-86b72fd17b1",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Javascript and its use cases'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BlogPostsPage(blogUrl: "https://medium.com/@shreyakhedkar05/task-7-2-258063fb4da2",);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              builder: (_, collapsed, expanded) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                  child: Expandable(
                                    collapsed: collapsed,
                                    expanded: expanded,
                                    theme: const ExpandableThemeData(crossFadePoint: 0),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
