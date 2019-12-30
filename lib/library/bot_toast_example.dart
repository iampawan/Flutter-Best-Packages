import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class BotToastExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bot Toast"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Show Text"),
              onPressed: () {
                BotToast.showText(
                  text: "Simple Text",
                ); //popup a text toast;
              },
            ),
            RaisedButton(
              child: Text("Show Simple Notification"),
              onPressed: () {
                BotToast.showSimpleNotification(
                    title: "Simple", hideCloseButton: true);
              },
            ),
            RaisedButton(
              child: Text("Show Loading"),
              onPressed: () {
                BotToast.showLoading(clickClose: true);
              },
            ),
            RaisedButton(
              child: Text("Show Attachment Widget"),
              onPressed: () {
                //popup a attachments toast
                BotToast.showAttachedWidget(
                    attachedBuilder: (_) => Center(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ),
                    duration: Duration(seconds: 2),
                    target: Offset(520, 520));
              },
            ),
            RaisedButton(
              child: Text("Custom Toast"),
              onPressed: () {
                BotToast.showText(
                  text: "Simple Text",
                );
                BotToast.showSimpleNotification(
                  title: "Simple",
                );
                BotToast.showLoading(clickClose: true);
                BotToast.showAttachedWidget(
                    attachedBuilder: (_) => Center(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ),
                    duration: Duration(seconds: 2),
                    target: Offset(520, 520));
                // BotToast.showLoading();
              },
            ),
          ],
        ),
      ),
    );
  }
}
