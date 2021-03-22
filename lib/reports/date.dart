import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/date_symbol_data_local.dart';
class MyHomeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Intl.defaultLocale = 'vi_VI';
    //initializeDateFormatting(Intl.defaultLocale);
    //  Intl.defaultLocale = 'vi_VI';
   // var newFormat = new DateFormat.yMMMMd('vi_VI');
//    initializeDateFormatting(Intl.defaultLocale);
    return Container();
  }
}


class DatePickerDemo extends StatefulWidget {
  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}



class _DatePickerDemoState extends State<DatePickerDemo> {

  //var now = DateTime.now();
   DateTime selectedDate = DateTime.now();
  //var date = DateFormat("dd/MM/yyyy").format(DateTime.now());
  //DateTime tempDate = new DateFormat("dd/MM/yyyy hh:mm:ss").parse("12/01/2020 10:07:23");
  //String dateFormate = DateFormat("dd/MM/yyyy").format(DateTime.parse("12/01/2020"));
  //DateTime tempDate = new DateFormat("dd/MM/yyyy").parse("12/01/2020");
  //DateFormat("dd/MM/yyyy").format(DateTime.parse(selectedDate.toString()))
   //DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]
  @override
  Widget build(BuildContext context) {
    print("1");
    //DateTime tempDate = new DateFormat("dd/MM/yyyy hh:mm:ss").parse("12/01/2020 10:07:23");
    return Scaffold(
        body: Center(
            child: RaisedButton(
              child: Text('Tap'),
              onPressed: () {
                print("2");
                showDatePicker(
                    context: context,
                    locale : const Locale('vi', 'VI'),
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2018),
                    lastDate: DateTime(2030),
                    builder: (BuildContext context, Widget child) {
                      return Theme(
                        data: ThemeData.dark(),
                        child: child,
                      );
                    }
                );
                print("3");
               print(selectedDate);
               print(DateTime(2018));
               print(DateTime(2030));
              },
            )
        )
    );

  }
}