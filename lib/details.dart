import 'package:date_field/date_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsHomePage extends StatelessWidget {
  DetailsHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: Container(
            child: CupertinoNavigationBar(
              // backgroundColor: Colors.white,
                middle: Column(
                  children: [
                    Container(
                      child: Text('Details'),
                      margin: EdgeInsets.only(bottom: 20),
                    ),
                  ],
                )),
          )),
        body: Center(
            child: Column(
              children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your First name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child:TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Last name',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: 'Date of Birth',
                  ),
                  mode: DateTimeFieldPickerMode.date,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  onDateSelected: (DateTime value) {
                    print(value);
                  },
                )),
              ],
            )));
  }
}
