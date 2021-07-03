import 'package:flutter/material.dart';
import 'package:flutter_summernote/flutter_summernote.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FlutterSummernoteState> _keyEditor = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('WYSIWYG'),
        ),
        body: Stack(
          children: [
            Container(
              child: ListView(
                children: [_formWidget()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _formWidget() {
    return Container(
      child: Form(
          child: Column(
        children: [
          Text('WYSIWYG Form'),
          FlutterSummernote(
            height: 500,
            hint: "Your text here...",
            key: _keyEditor,
            // hasAttachment: true,
            // showBottomToolbar: true,
          ),
        ],
      )),
    );
  }
}
