import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  final pageDecoration = PageDecoration(
    titleTextStyle:
        PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
    contentPadding: const EdgeInsets.all(10),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("assets/images/online_Ad.png"),
          title: "Online Ads",
          body: "This is an online ad.",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/images/online_article.png"),
          title: "Online Article",
          body: "This is an online article.",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/images/website.png"),
          title: "Html & CSS",
          body: "This is an online course where you can learn html & css",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/images/shared_workspace.png"),
          title: "Workspace",
          body: "Want a workspace? Then check it out.",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: Text(
          "Done",
          style: TextStyle(color: Colors.black),
        ),
        onDone: () {},
      ),
    );
  }
}
