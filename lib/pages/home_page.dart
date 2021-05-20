import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('flutter', style: TextStyle(fontSize: 20),).tr(),
              ),
            ),

            Container(
              height: 45,
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.green,
                      child: Text('English'),
                      onPressed: () {
                        context.locale = Locale('en', 'US');
                      },
                    ),
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.red,
                      child: Text('Korean'),
                      onPressed: () {
                        context.locale = Locale('ko', 'KR');
                      },
                    ),
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.blue,
                      child: Text('Japanese'),
                      onPressed: () {
                        context.locale = Locale('ja', 'JA');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
