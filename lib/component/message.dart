import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_vertex_flutter/dialog.dart';

class Message extends StatelessWidget {
  var _name;
  var _context;

  Message(this._name);

  Widget _build() {
    return new GestureDetector(
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new Image.asset(
                  "assets/images/message.png",
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              new Expanded(
                flex: 9,
                child: new Padding(
                  padding: new EdgeInsets.only(left: 5.00),
                  child: new Text(
                    _name,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
          new Divider(
            color: Colors.black12,
          ),
        ],
      ),
      onTap: () {
        _showDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return _build();
  }

  _showDialog() {
    Navigator.of(_context).push(new MaterialPageRoute(
        builder: (BuildContext context) => new DialogStateful(_name)));
  }
}