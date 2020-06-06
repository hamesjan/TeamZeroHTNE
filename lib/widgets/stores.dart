import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stores extends StatelessWidget {
  final String name;
  final VoidCallback callback;
  final String image;

  const Stores({Key key, this.name, this.callback, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.greenAccent,
      child: InkWell(
        onTap: () => callback, // handle your onTap here
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                child: FittedBox(
                  child: Image(
                    image: AssetImage(image),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Text(name, style: TextStyle(
                fontSize: 22
              ),),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Join', textAlign: TextAlign.center,),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                            Icons.people
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
