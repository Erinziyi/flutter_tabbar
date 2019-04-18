import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Bar',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Tab Bar'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // Tab Bar View Text Style


    textStyle() {
      return new TextStyle(color: Colors.white, fontSize: 30.0);
    }

    // Tab Bar Bottom

    return new DefaultTabController(
        length:3,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text ('Tab Bar'),
            bottom: new TabBar(
              unselectedLabelColor: Colors.white,
               tabs:<Widget>[
                  new Tab(
                    text: "Complete",
                  ),
                   new Tab(
                     text: "Incomple",
                   ),
                  new Tab(
                    text: "Overdue",
                  ),
               ],
              controller: _tabController,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
            ),




          ),

          body: new TabBarView(
              children:<Widget>[
                new Container(
                  color:Colors.deepOrangeAccent,
                  child: new Center(
                    child: new Text(
                      "First Course",
                      style: textStyle(),
                    ),
                  ),
                ),

                new Container(
                  color: Colors.blueGrey,
                  child: new Center(
                    child: new Text(
                      "Second Course",
                      style: textStyle(),

                    ),
                  ),

                ),

                new Container(
                  color: Colors.teal,
                  child: new Center(
                    child: new Text(
                      "Third Course",
                      style: textStyle(),

                    ),
                  ),

                ),



              ],

            controller: _tabController,
          ),



        ),



    );


  }
}
