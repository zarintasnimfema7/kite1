import 'package:flutter/material.dart';
import 'dart:async';

class GuidedMeditationPage extends StatefulWidget {
  @override
  _GuidedMeditationPageState createState() => _GuidedMeditationPageState();
}

class _GuidedMeditationPageState extends State<GuidedMeditationPage> {
  int _currentStep = 0;
  Timer? _timer;
  int _timerSeconds = 0;
  String _currentInstruction = "Get ready to start your Meditation. We will guide you through every step of the process. Just follow the instructions on screen. You can cut every step short by clicking the next step button";

  final List<Map<String, dynamic>> _steps = [
    {
      'instruction': "Get ready to start your Meditation. We will guide you through every step of the process. Just follow the instructions on screen. You can cut every step short by clicking the next step button",
      'duration': 15, // seconds
    },
    {
      'instruction': "Find a comfortable place to sit, close your eyes, and take a deep breath.",
      'duration': 10, // seconds
    },
    {
      'instruction': "Focus on your breathing. Inhale slowly through your nose, hold for a moment, and exhale through your mouth.",
      'duration': 30,
    },
    {
      'instruction': "Feel the sensation of the air entering and leaving your body. Let go of any tension with each exhale.",
      'duration': 30,
    },
    {
      'instruction': "Visualize a peaceful place, like a beach or a forest. Imagine the sounds, smells, and sights.",
      'duration': 30,
    },
    {
      'instruction': "Continue to breathe deeply, maintaining your focus on the peaceful place.",
      'duration': 30,
    },
    {
      'instruction': "Contract and release your muscles one by one",
      'duration': 45,
    },
    {
      'instruction': "Slowly bring your awareness back to your breathing",
      'duration': 15,
    },
    {
      'instruction': "When you're ready,look around and take a moment to notice how you feel.",
      'duration': 15,
    },
    {
      'instruction': "Congratulations. You have made it to the end of the meditation. Hope you are feeling better now.",
      'duration': 0,
    },
  ];

  @override
  void initState() {
    super.initState();
    _startStep();
  }

  void _startStep() {
    setState(() {
      _timerSeconds = _steps[_currentStep]['duration'];
      _currentInstruction = _steps[_currentStep]['instruction'];
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timerSeconds > 0) {
        setState(() {
          _timerSeconds--;
        });
      } else {
        _timer?.cancel();
        if (_currentStep < _steps.length - 1) {
          setState(() {
            _currentStep++;
          });
          _startStep();
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guided Meditation',style: TextStyle(fontFamily: "BUXTONSKETCH",fontSize: 30),),
      ),
      body: Container(
        color: Colors.pink.shade100,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              child: Center(
                child: Text(
                  _currentInstruction,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Time remaining: $_timerSeconds seconds',
              style: TextStyle(fontSize: 25,
                color: Colors.red,
                fontFamily: "BUXTONSKETCH",
              ),
            ),
            SizedBox(height: 40),
            if (_currentStep < _steps.length - 1)
              ElevatedButton(
                onPressed: () {
                  _timer?.cancel();
                  if (_currentStep < _steps.length - 1) {
                    setState(() {
                      _currentStep++;
                    });
                    _startStep();
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(200, 50),
                ),
                child: Text(
                  'Next Step',
                  style: TextStyle(color: Colors.white,fontFamily: "BUXTONSKETCH",fontSize: 30),
                ),
              ),
          ],
        ),
      ),
    );
  }
}





