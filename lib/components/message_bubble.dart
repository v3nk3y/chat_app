import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({
    this.text,
    this.sender,
  });

  final String text;
  final String sender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '$sender',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12.0,
            ),
          ),
          Material(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0)),
            elevation: 5.0,
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$text',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
