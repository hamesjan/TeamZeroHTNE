import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:htnemask/pages/maps.dart';
import 'package:htnemask/widgets/custom_buttons.dart';
import 'package:htnemask/widgets/stores.dart';
import 'package:htnemask/pages/loading.dart';

class Home extends StatefulWidget {
  final bool queueState;

  const Home({Key key, this.queueState}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget getQueue(){
    if (widget.queueState) {
      return Column(
        children: <Widget>[
      Container(
      padding: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
          gradient: LinearGradient(
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
          colors: [
            Colors.blue,
            Colors.white
          ]
            ),
            color: Colors.blueAccent,
            borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(200)
            )
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                Container(width: MediaQuery.of(context).size.width,),
                Text('Queue', style: TextStyle(
                fontSize: 44,
                ),),
                SizedBox(
                height: 10,
                ),
                Text('Queue Number: 3'),
                SizedBox(
                height: 10,
                ),
                Text('Store: Trader Joes',style: TextStyle(
                  fontSize: 22
                ),),
                SizedBox(
                height: 10,
                ),
                Text(''),
                SizedBox(
                height: 20,
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Text('Enter the Store now!', style: TextStyle(
                  fontSize: 22
                ),),
                SizedBox(height: 10,),
                CustomButton(
                  text: 'Confirm',
                  callback: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) => Loading()
                    ));
                  },
                  color: Colors.green,
                ),
                SizedBox(height: 10,),
                CustomButton(
                  text: 'Cancel',
                  callback: (){},
                  color: Colors.red,
                )
              ],
            ),
          ),

        ],
      );

    } else {
      return Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue,
                  Colors.white
                ]
            ),
            color: Colors.blueAccent,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(200)
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(width: MediaQuery.of(context).size.width,),
            Text('Not in Queue', style: TextStyle(
                fontSize: 22
            ),),
            SizedBox(
              height: 10,
            ),
            Text(
              'Select a store and join Queue.'
            )
          ],
        ),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    TabController _tabController;
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        title: Image(
          image: AssetImage(
            'assets/images/app_logo.png'
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            getQueue(),

            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.people),
                            SizedBox(width: 10,),
                            Text('Quick Queue',style: TextStyle(
                                fontSize: 22,
                            ),),
                          ],
                        ),
                  Divider(thickness: 3,),
                  SizedBox(height: 10,),
                  Stores(name: 'Trader Joes',EWT: '5 min', callback: (){
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home(queueState: true,)
                        )
                    );
                  }, image: 'assets/images/traderjoes.png'),
                  SizedBox(height: 7,),
                  Divider(thickness: 3,),
                  SizedBox(height: 8,),
                  Stores(name: 'Costco', EWT: '9 min', callback: (){
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home(queueState: true,)
                        )
                    );
                  }, image: 'assets/images/costco.png'),
                  SizedBox(height: 7,),
                  Divider(thickness: 3,),
                  Stores(name: 'S-Mart', EWT: '3 min', callback: (){
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home(queueState: true,)
                        )
                    );
                  }, image: 'assets/images/smart.png'),
                  SizedBox(height: 7,),
                  Divider(thickness: 3,),
                  Stores(name: 'Vons', EWT: '1 min', callback: (){
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home(queueState: true,)
                        )
                    );
                  }, image: 'assets/images/vons.png'),
                  SizedBox(height: 7,),
                  Divider(thickness: 3,),
                  Stores(name: 'CVS Pharmacy', EWT: '0 min', callback: (){
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home(queueState: true,)
                        )
                    );
                  }, image: 'assets/images/cvs.png'),
                  SizedBox(height: 7,),
                  Divider(thickness: 3,),
                ],
              ),
            )

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.search),
        label: Text('Search Store', style: TextStyle(
          fontSize: 22
        ),),
        onPressed: (){
          Navigator.pop(context);
          Navigator.push(context,
          MaterialPageRoute(
            builder: (BuildContext context) => MapPage()
          )
          );
        },

      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
        ),

      ),
    );
  }
}
