
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:table_calendar/table_calendar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitify',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var inputType;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today",style:TextStyle(color: Colors.black),),
            TextField(
              decoration: new InputDecoration.collapsed(
                  hintText: 'My Journal'


              ),

            ),
          ],

        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            color: Colors.blue,
            onPressed: () {
              print("Shopping Cart");
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'arrow',
            color: Colors.blue,
            onPressed: () {
              print("I am arrow");
            },
          ),
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.grey),
                    backgroundColor: Colors.white,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  onPressed: () => {

                  },
                  icon: Icon(Icons.account_balance_wallet_rounded,),
                  label: Text('All Habits',),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.grey),
                    backgroundColor: Colors.white,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  onPressed: () => {

                  },
                  icon: Icon(Icons.circle,),
                  label: Text('Evening',),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.grey),
                    backgroundColor: Colors.white,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  onPressed: () => {

                  },
                  icon: Icon(Icons.add,),
                  label: Text('New Area',),
                ),
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.account_balance_wallet_rounded,color: Colors.black,),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("No Habbits"),

              ],


                ) ],
            ),
           Row(
           /*  children: [
             TableCalendar(
                 initialCalendarFormat: CalendarFormat.month,
                 calendarStyle: CalendarStyle(
                     todayColor: Colors.blue,
                     selectedColor: Theme.of(context).primaryColor,
                     todayStyle: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 22.0,
                         color: Colors.white)
                 ),
               ) ],*/
           )
           /* const Text(
              'You have pushed the button this many times:',
            ),*/
           /* Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),*/
          ],

        ),


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.

      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded,color: Colors.grey,semanticLabel: 'journal',),
                title: Text('Journal',style:TextStyle(color: Colors.grey)),

               // backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(

                icon: Icon(Icons.add_circle_sharp,color: Colors.grey,semanticLabel: 'Progress',),
                title: Text('Progress',style:TextStyle(color: Colors.grey)),

              //  backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_to_drive,color: Colors.grey,),
                title:Text('Challanges',style:TextStyle(color: Colors.grey)),
               // backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border,color: Colors.grey,),
              title: Text('Upgrade',style:TextStyle(color: Colors.grey)),
              // backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,color: Colors.grey,),
              title: Text('Settings',style:TextStyle(color: Colors.grey)),
              // backgroundColor: Colors.black
            ),
          ],

      ),
    );

  }
}

