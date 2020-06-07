import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stores extends StatelessWidget {
  final String name;
  final VoidCallback callback;
  final String image;
  final String EWT;

  const Stores({Key key, this.name, this.callback, this.image, this.EWT}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () => callback, // handle your onTap here
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name, style: TextStyle(
                      fontSize: 22
                  ),),
                  Text('Estimated Wait: $EWT')
                ],
              ),
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
      );
  }
}
