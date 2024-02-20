import 'package:flutter/material.dart';
import 'main.dart';

var Mesg='test';
var Mesg2='test2';
var adultNum=0;
var childNum=0;
var iconin=Icons.task_alt;
var iconcolor= 0xFFFFA500;
var adultColor=0xFF000000;
var timeColor=0xFF000000;
void main() {
  runApp(const confirmPage());
}

class confirmPage extends StatelessWidget {
  const confirmPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffBBD4CE)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body:
        Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    child: Image.asset('assets/images/img2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child:  const Text(
                      'restaurant Name',
                      style: TextStyle(color: Colors.white, fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left:10,
                    top:30,
                    child: IconButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),);
                    }, icon: Icon(Icons.arrow_back,
                      color:Colors.white,)),
                  )
                ],

              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:
                  [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),

              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('$time_book PM',
                    style: TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),),
                  Icon(Icons.schedule),
                  Text('|',
                    style:TextStyle(fontSize: 25,
                    ),),
                  Text('$adultNum Adult',
                    style: TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),),
                  Text('|',
                    style:TextStyle(fontSize: 25),),
                  Text('$childNum Children',
                    style: TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 25,),
                Center(
                  child: Text('Book a table',
                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40,)),
                ),
            SizedBox(height: 50,),
            Center(
              child: Text('Adult',
                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      adultNum++;
                    });
                },),
                Text('$adultNum',
                    style:TextStyle(fontSize: 50,)),
                FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if(adultNum!=0) {
                        adultNum--;
                      }
                    });
                  },),
              ],
            ),
            SizedBox(height: 50,),
            Center(
              child: Text('Children',
                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                        childNum++;
                    });
                  },),
                Text('$childNum',
                    style:TextStyle(fontSize: 50,)),
                FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if(childNum!=0) {
                        childNum--;
                      }
                    });
                  },),
              ],
            ),
            SizedBox(
              height: 40,
            ),
        Container(
          width: 300,
          child: ElevatedButton(

              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xffBBD4CE)), // Set your desired background color
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                  ),
                ),
              ),
                onPressed: () {
                if(time_book<=0) {
                  Mesg = 'Error';
                  Mesg2='You did not choose the booking time';
                  iconin=Icons.priority_high;
                  iconcolor=0xFFFF0000;
                  timeColor=0xFFFF0000;
                  adultColor=0xFF000000;
                }
                else {
                  if(adultNum<=0) {
                    Mesg = 'Error';
                    Mesg2='A table must at least have one adult';
                    iconin=Icons.priority_high;
                    iconcolor=0xFFFF0000;
                    adultColor=0xFFFF0000;
                    timeColor=0xFF000000;
                  }
                  else {
                    Mesg = 'Booking confirmed';
                    Mesg2 = 'See you soon';
                    iconin=Icons.task_alt;
                    iconcolor=0xFFFFA500;
                    adultColor=0xFF000000;
                    timeColor=0xFF000000;
                  }
                    }

// When the button is pressed, show the dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Column(
                          children: [
                            SizedBox(
                              height:80,
                              child: Icon(iconin,
                              color: Color(iconcolor),
                              size: 80,),
                            ),
                            Text(Mesg,
                              style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 25),),
                          ],
                        ),

                        content: SizedBox(
                          height: 180,
                          child: Column(
                            children: [
                              Text(Mesg2,
                            style: TextStyle(fontSize: 20,),),
                              SizedBox(
                                height: 20,
                              ),
                              Text('-------------------------------------'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.schedule,
                                 ),
                                  SizedBox(width: 4,),
                                  Text('$time_book:00 PM',
                                    style: TextStyle(color: Color(timeColor),
                                        fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Row(
                                children: [

                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person,),
                                  SizedBox(width: 4,),
                                  Text('$adultNum ',
                                    style: TextStyle(color:Color(adultColor),
                                        fontWeight: FontWeight.bold),),
                                  Text(':person',),
                                  SizedBox(width: 5,),
                                  Text('.',
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.child_care),
                                  SizedBox(width: 4,),
                                  Text('$childNum ',
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text(':kids',),


                                ],
                              )
                            ],
                          ),
                        ),
                        actions: [
                          Center(
                            child: Container(
                              width:200,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffBBD4CE)), // Set your desired background color
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  // Close the dialog when this button is pressed
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close',
                                style: TextStyle(color:Colors.black ),),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Confirm"))
        )
          ],
        )

// bottomNavigationBar: BottomNavigationBar(
//   currentIndex: currentindex,
//   onTap: (index){
//     setState(() {
//       currentindex=index;
//     });
//   },
//   items: [
//     BottomNavigationBarItem(icon: Icon(Icons.home),
//     label: 'home',),
//     BottomNavigationBarItem(icon: Icon(Icons.next_plan),
//     label: 'next'),
//   ],
// ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}