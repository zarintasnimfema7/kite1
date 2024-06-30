import 'package:flutter/material.dart';

class FiveFourThreeTwoOnePage extends StatefulWidget {
  @override
  _FiveFourThreeTwoOnePageState createState() => _FiveFourThreeTwoOnePageState();
}

class _FiveFourThreeTwoOnePageState extends State<FiveFourThreeTwoOnePage> {
  int _currentStep = 0;

  List<String> _prompts = [
    "Take a deep breath",
    "Name 5 things you can see",
    "Name 4 things you can feel",
    "Name 3 things you can hear",
    "Name 2 things you can smell",
    "Name 1 thing you can taste",
  ];

  List<int> _numOfFields = [0, 5, 4, 3, 2, 1];
  List<List<TextEditingController>> _controllers = [
    [],
    List.generate(5, (_) => TextEditingController()),
    List.generate(4, (_) => TextEditingController()),
    List.generate(3, (_) => TextEditingController()),
    List.generate(2, (_) => TextEditingController()),
    [TextEditingController()],
  ];

  void _nextStep() {
    if (_currentStep < _prompts.length - 1) {
      setState(() {
        _currentStep++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CompletionPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5-4-3-2-1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_currentStep == 0)
              Center(
                child: Text(
                  _prompts[_currentStep],
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            else
              Text(
                _prompts[_currentStep],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            SizedBox(height: 16),
            if (_currentStep > 0)
              Column(
                children: List.generate(_numOfFields[_currentStep], (index) {
                  return TextField(
                    controller: _controllers[_currentStep][index],
                    decoration: InputDecoration(
                      hintText: 'Enter a response',
                    ),
                  );
                }),
              ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_currentStep > 0) {
                    // Clear controllers for the next step
                    for (var controller in _controllers[_currentStep]) {
                      controller.clear();
                    }
                  }
                  _nextStep();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade100,
                ),
                child: Text(
                  _currentStep == _prompts.length - 1 ? 'Finish' : 'Next',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CompletionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5-4-3-2-1'),
      ),
      body: Center(
        child: Text(
          'Congratulations. You have completed the exercise.',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
