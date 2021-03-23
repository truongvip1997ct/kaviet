import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:calendarro/calendarro.dart';
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
  Calendarro monthCalendarro;
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
    //DateTime tempDate = new DateFormat("dd/MM/yyyy hh:mm:ss").parse("12/01/2020 10:07:23");
    return Scaffold(
        body: Center(
            child: IconButton(
              icon: Icon(Icons.date_range),
              iconSize: 40,
              onPressed: () {
                showDatePicker(
                    context: context,
                    locale :  Locale("vi","VI"),
                    initialDate: selectedDate,
                    firstDate: DateTime(2018),
                    lastDate: DateTime(2030),
                    builder: (BuildContext context, Widget child) {
                      return Theme(
                        data: ThemeData.dark(),
                        child: child,
                      );
                    }
                );
              },
            )
        )
    );

  }
}