import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final String index;
  final ValueChanged<String> deleteFromList;

  PostWidget({@required this.index, @required this.deleteFromList});

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  String resultString;

  @override
  void initState() {
    resultString = widget.index;
    super.initState();
  }

  @override
  void didUpdateWidget(PostWidget oldWidget) {
    print("Updated widget " + widget.index);
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("Building " + widget.index);
    return GestureDetector(
      onTap: () {
        widget.deleteFromList(widget.index);
      },
      child: Container(
        child:
            //(resultString == widget.index) ? Text(resultString) : Text("Nope"),
            Column(
          children: <Widget>[
            /// These two should stay the same, since with the creation of the widget, the init-State is triggered
            /// But Because of some reason, the resultString seems to change and take the value of the Widget in the Column, it was in first.
            Text("Generated Index " + resultString),

            /// The retrieved index is the index the PostWidget got from the initState override of _MyHomePageState
            Text("Retrieved Index " + widget.index)
          ],
        ),
        color: Colors.blueGrey,
      ),
    );
  }
}
