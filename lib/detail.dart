import 'package:flutter/material.dart';

class Detail extends StatefulWidget {

  List list;
  int index;
  Detail({this.list,this.index});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.list[widget.index]['item_name']}"),
      ),
      body: Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 30.0)),
                Text(widget.list[widget.index]['item_name']),
                Text("Code : ${widget.list[widget.index]['item_code']}"),
                Text("Price : ${widget.list[widget.index]['price']}"),
                Text("Stock : ${widget.list[widget.index]['stock']}"),
                Padding(padding: const EdgeInsets.only(top: 30.0)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text('EDIT'),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.red,
                      child: Text('DELETE'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
