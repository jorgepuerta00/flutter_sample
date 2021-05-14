import 'package:flutter/material.dart';

class AudioList extends StatelessWidget {
  final List<Audio> audios;
  final Function onPress;

  AudioList({this.audios, this.onPress});

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 1),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: _buildContactList());
  }

  List<_AudioListItem> _buildContactList() {
    return audios.map((channel) => _AudioListItem(channel, onPress)).toList();
  }
}

class _AudioListItem extends ListTile {
  _AudioListItem(Audio channel, Function onPress)
      : super(
          title: Text(channel.title),
          leading: Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: CircleAvatar(
                child: Icon(Icons.music_note_outlined),
                radius: 40,
              )),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz, size: 30),
            onPressed: onPress,
          ),
        );
}

class Audio {
  final String title;
  final String subtitle;
  const Audio({this.title, this.subtitle});
}
