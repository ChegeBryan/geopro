import 'package:flutter/material.dart';

class AddSponsorshipForm extends StatefulWidget {
  @override
  _AddSponsorshipFormState createState() => _AddSponsorshipFormState();
}

class _AddSponsorshipFormState extends State<AddSponsorshipForm> {
  final _formKey = GlobalKey<FormState>();
  bool _autovalidate = false;

  final TextEditingController _name = TextEditingController();
  final TextEditingController _description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidate: _autovalidate,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Add Sponsorship',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _name,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please provide name';
              }
              return null;
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _description,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            ),
            maxLines: null,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please provide description';
              }
              return null;
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                  } else {
                    setState(() {
                      _autovalidate = true;
                    });
                  }
                },
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 16.0),
                ),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
