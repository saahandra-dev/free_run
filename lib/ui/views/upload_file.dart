import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:free_run/core/constants/app_constants.dart';
import 'package:free_run/ui/widgets/reusable_btn.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({ Key key }) : super(key: key);

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {

  void filePicker(fileType) async {
    FilePickerResult result = await FilePicker.platform.pickFiles(
      allowMultiple: true, type: FileType.custom,
      allowedExtensions: fileType
    );
    
    if(result != null) {
      List<File> files = result.paths.map((path) => File(path)).toList();
      print(files);
    } else {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Container(
            width: double.infinity,
            child: ElevatedButton(
              child: Text('- Select File -',
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 80,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ReusableBtn(
                                  onpressed: () {
                                    filePicker(imageExt);
                                  },
                                  text: "Image",
                                ),
                                ReusableBtn(
                                  onpressed: () {
                                    filePicker(vidExt);
                                  }, 
                                  text: "Video",
                                ),
                                ReusableBtn(
                                  onpressed: () {
                                    filePicker(docExt);
                                  }, 
                                  text: "Pdf"
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
            }
        ),
      )
    ),
      ));
  }
}

