import 'package:flutter/material.dart';
import '../backend/themes.dart';

class StreamPostCreationPage extends StatefulWidget {
  @override
  //initialises the tannoy page state
  StreamPostCreationPageState createState() => StreamPostCreationPageState();
}

class StreamPostCreationPageState extends State<StreamPostCreationPage> {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    //checks if the user is signed in, if not, they are signed in. If they are, the page is loaded

    return
        //returns the custom app bar with the tannoy page title
        //builds the body
        Center(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Publisher',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your name';
                  }
                  if (value.length > 30) {
                    return "Please ensure the post's author's name is under 30 charachters in length.";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Title',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter the post\'s title';
                  }
                  if (value.length > 30) {
                    return "Please ensure the post's title is under 30 charachters in length.";
                  }
                  return null;
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Message Body',
                  ),
                  maxLines: 15,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter the post\'s body';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    // Process data.
                  }
                },
                child: Text('Attach a file'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    // Process data.
                  }
                },
                child: Text('Submit draft for approval'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
