import'package:flutter/material.dart';
class TrainingProgramScreen extends StatefulWidget {
  @override
  _TrainingProgramScreenState createState() => _TrainingProgramScreenState();
}

class _TrainingProgramScreenState extends State<TrainingProgramScreen> {
  String selectedCourse = '';
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  List<String> courses = [
    'App development',
    'E-Commerce',
    'Computer Graphics',
    'Cloud Computing',
    'Data Analytics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Training Program'),
        backgroundColor:Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Enter Your Name'),
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Enter Your Email'),
              ),
              SizedBox(height: 20),
              Text('Select a Course:'),
              SizedBox(height: 10),
              Column(
                children: courses
                    .map(
                      (course) => RadioListTile(
                    title: Text(course),
                    value: course,
                    groupValue: selectedCourse,
                    onChanged: (value) {
                      setState(() {
                        selectedCourse = value.toString();
                      });
                    },
                  ),
                )
                    .toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform actions when submit button is pressed
                  print('Name: ${nameController.text}');
                  print('Email: ${emailController.text}');
                  print('Selected Course: $selectedCourse');
                },
                child: Text('Submit'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
