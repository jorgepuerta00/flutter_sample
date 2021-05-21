import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/pages/messaging/widgets/chat_data.dart';
import 'package:ourglass/ui/pages/messaging/widgets/received_messages_widget.dart';
import 'package:ourglass/ui/pages/messaging/widgets/sent_message_widget.dart';
import 'package:ourglass/ui/widgets/custom_avatar.dart';
import 'package:ourglass/ui/widgets/custom_gesture_detector.dart';

class ChatScreen extends StatefulWidget {
  final Contact contact;
  ChatScreen({@required this.contact});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _showBottom = false;
  bool _showSendButtom = true;

  @override
  Widget build(BuildContext context) {
    return CustomGestureDetector(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CustomCircleAvatar(
                imgUrl: widget.contact.imgUrl,
                label: widget.contact.lastname.isNotEmpty
                    ? widget.contact.name[0] + widget.contact.lastname[0]
                    : widget.contact.name[0]),
            SizedBox(width: 15),
            Flexible(
              child: new Container(
                  child: new Text(
                widget.contact.name + ' ' + widget.contact.lastname,
                overflow: TextOverflow.clip,
              )),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.phone_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: messages.length,
                    itemBuilder: (ctx, i) {
                      if (messages[i]['status'] == MessageType.received) {
                        return ReceivedMessagesWidget(i: i);
                      } else {
                        return SentMessageWidget(i: i);
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  height: 61,
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.add), onPressed: () => {}),
                      Expanded(
                        child: Container(
                          height: 40,
                          child: new TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(color: Colors.grey),
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 10, left: 10),
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                fillColor: Colors.black12,
                                filled: true,
                                hintText: "Type your message",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                )),
                            onChanged: (text) {
                              setState(() {
                                _showSendButtom = text.isEmpty;
                                print('First text field: $text');
                              });
                            },
                          ),
                        ),
                      ),
                      (() {
                        // your code hereif (!_showSendButtom)
                        if (_showSendButtom)
                          return Row(children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                ),
                                onPressed: () => {}),
                            InkWell(
                              child: Icon(
                                _showBottom
                                    ? Icons.keyboard_voice
                                    : Icons.keyboard_voice,
                              ),
                              onLongPress: () {
                                setState(() {
                                  _showBottom = true;
                                });
                              },
                            ),
                          ]);
                        else
                          return Row(children: <Widget>[
                            SizedBox(width: 10),
                            Icon(Icons.send)
                          ]);
                      }())
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
