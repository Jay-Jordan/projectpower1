import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Page One'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyAppState extends State<MyApp>{
  final geolocator =
      Geolocator.getCurrentPosition(forceAndroidLocationManager: true);
  Position _currentPosition;
  String currentAddress = "";

  void getCurrentLocation() {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

      getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
    }
  }
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title:  Text("Retreat Registration"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("ENTER DETAILS BELOW", style: TextStyle(color: Colors.blue,
                fontSize: 24),),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Title"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "First Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Last Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Phone Number"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Email"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Sex"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Age"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Marital Status"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Contact Address"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Occupation"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Band"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Branch"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Living With Guardian"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Name Of Parents"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Phone Number"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Email"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Next Of Kin"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Phone Number"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Email"
                ),
              ),
            ),

            ElevatedButton(
                onPressed: (){},
                child: Text("SUBMIT")
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

}




