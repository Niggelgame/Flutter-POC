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
            Text("The index it is " + resultString),
            Text("Original index is " + widget.index)
          ],
        ),
        color: Colors.blueGrey,
      ),
    );
  }
}
