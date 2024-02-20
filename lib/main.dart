import 'package:flutter/material.dart';
import 'package:untitled4/confirmPage.dart';

int time_book=0;
int dinner_book=0;
var x= 0xffBBDfff;

List<dynamic> lunch_array = [
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,

];
void timecalc()
{
  for (int i = 0; i < 10; i++)
  {
    if(lunch_array[i]==0xffBBD4CE)
    {
      switch(i)
      {
        case 0:
          time_book=2;
          break;
        case 1:
          time_book=3;
          break;
        case 2:
          time_book=4;
          break;
        case 3:
          time_book=5;
          break;
        case 4:
          time_book=7;
          break;
        case 5:
          time_book=8;
          break;
        case 6:
          time_book=9;
          break;
        case 7:
          time_book=10;
          break;
        case 8:
          time_book=11;
          break;
        case 9:
          time_book=12;
          break;
      }
    }
  }
}
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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
                    child:  Text(
                       'restaurant Name',
                      style: TextStyle(color: Colors.white, fontSize: 40,
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left:10,
                    top:30,
                    child: IconButton(onPressed: () {

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
            Text('Lunch',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[0])),
                    onPressed: () {
                  setState(() {
                    for(int i=0;i<10;i++) {
                      if(i!=0)
                      lunch_array[i] =0xffffffff;
                      else
                      lunch_array[i] = 0xffBBD4CE;
                      time_book=2;
                    }
                  });


                },
                    child: Text(
              '2 PM',
            )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[1])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=1)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=3;
                        }
                      });
                }, child: Text(
                  '3 PM',
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[2])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=2)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=4;
                        }
                      });
                }, child: Text(
                  '4 PM',
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[3])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=3)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=5;

                        }
                      });
                }, child: Text(
                  '5 PM',
                )),
                ],),
            SizedBox(height: 50,),
            Text('Dinner',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[4])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=4)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=7;
                        }
                      });
                }, child: Text(
                  '7 PM',
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[5])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=5)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=8;
                        }
                      });
                }, child: Text(
                  '8 PM',
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[6])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=6)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=9;
                        }
                      });
                }, child: Text(
                  '9 PM',
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[7])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=7)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=10;
                        }
                      });
                }, child: Text(
                  '10 PM',
                )),
              ],),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[8])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=8)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=11;
                        }
                      });
                }, child: Text(
                  '11 PM',
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color(lunch_array[9])),
                    onPressed: () {
                      setState(() {
                        for(int i=0;i<10;i++) {
                          if(i!=9)
                            lunch_array[i] =0xffffffff;
                          else
                            lunch_array[i] = 0xffBBD4CE;
                          time_book=12;
                        }
                      });
                }, child: Text(
                  '12 PM',
                )),
              ],),
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

                    print(time_book);

                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => confirmPage()),);

              },
                  child: Text("Confirm")),
            )



            ],
          ),

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

