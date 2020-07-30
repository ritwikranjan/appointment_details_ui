import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appointment Details'),
          leading: Icon(Icons.arrow_back),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://pyxis.nymag.com/v1/imgs/846/9bb/440e83edacba3579e42bb6ad20860b50b0-18-arya-stark.rsquare.w700.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Dr. Manoj Kumar',
                          style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 25.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            'Cardiologist',
                            style: TextStyle(
                                color: Colors.blueGrey[900],
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                children: <Widget>[
                  Expanded(flex: 1, child: Icon(Icons.calendar_today)),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Appointment Time'),
                              Text(
                                'Time Left',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 4.0),
                          child: Text('time'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                children: <Widget>[
                  Expanded(flex: 1, child: Icon(Icons.location_on)),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Address'),
                          Text('time'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Icon(Icons.book),
                    flex: 1,
                  ),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text('Booked For'),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: DropdownButton<String>(
                              underline: Container(),
                              items: <DropdownMenuItem<String>>[
                                DropdownMenuItem(
                                  child: Text('Ritwik'),
                                )
                              ],
                              onChanged: (String value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
