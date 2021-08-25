import 'package:flutter/material.dart';
import 'package:free_run/ui/views/upload_file.dart';

void main() {
  runApp(FreeRun());

}


class FreeRun extends StatelessWidget {
  const FreeRun({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Free Run',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        // textTheme: GoogleFonts.spartanTextTheme(Theme.of(context).textTheme),
        // scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: UploadPage()
    );
  }
}
