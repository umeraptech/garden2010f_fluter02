import 'package:flutter/material.dart';

void main()=>runApp(const MaterialApp(
  home:  FlexHome(),
  debugShowCheckedModeBanner: false,
));

class FlexHome extends StatelessWidget {
  const FlexHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flex Example'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
              child: Image.asset('assets/droid1.jpg'),
              flex: 3
          ),
          Expanded(
            flex: 2,
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.cyan,
                child: Text('Kafiath'),
              )
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.yellowAccent,
                child: Text('Last Chance'),
              )
          ),
        ],
      ),
    );
  }
}
