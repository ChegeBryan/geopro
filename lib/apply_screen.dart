import 'package:flutter/material.dart';
import 'package:geopro/widgets/application_form.dart';

class ApplyScreen extends StatefulWidget {
  @override
  _ApplyScreenState createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sponsorship Application'),
      ),
      body: ApplicationForm(),
    );
  }
}