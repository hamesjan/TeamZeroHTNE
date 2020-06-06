import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:htnemask/widgets/stores.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool queue = false;

  Widget getQueue(){
    if (queue) {
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
            Text('Store: Trader Joes'),
            SizedBox(
              height: 10,
            ),
            Text('Estimated Wait: 5 min'),
            SizedBox(
              height: 20,
            )

          ],
        ),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            getQueue(),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    padding: EdgeInsets.all(16),
                    child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.people),
                            Text('Quick Queue',style: TextStyle(
                                fontSize: 22,
                            ),),
                          ],
                        ),
                  ),
                  SizedBox(height: 10,),
                  Stores(name: 'Trader Joes', callback: (){}, image: 'assets/images/traderjoes.png'),
                  SizedBox(height: 15,),
                  Stores(name: 'Costco', callback: (){}, image: 'assets/images/costco.png')
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
        onPressed: (){},

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
