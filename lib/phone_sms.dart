import 'package:flutter/material.dart';
import 'package:flutter_use_system/utils.dart';
class PhoneSms extends StatelessWidget {
 final TelAndSmsService _service = GetItClass().locator<TelAndSmsService>();
 final String number = "+84975416243";
 final String email = "az0560575@gamil.com";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('page Two'),
        ),
        body: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              ElevatedButton(
                child: Text('打电话'),
                onPressed: ()=> _service.call(number),
              ),
              ElevatedButton(
                  onPressed: ()=>_service.sendSms(number),
                  child:Text('发短信'),
              ),
              ElevatedButton(
                  onPressed: ()=>_service.sendEmail(email),
                  child: Text("发邮件")
              ),
            ],

          ),
        ),
      ),
    );
  }
}
