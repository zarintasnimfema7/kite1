import 'package:flutter/material.dart';
import 'dart:async';

class GroundingExercisePage extends StatefulWidget {
  @override
  _GroundingExercisePageState createState() => _GroundingExercisePageState();
}

class _GroundingExercisePageState extends State<GroundingExercisePage> {
  TextEditingController _controller = TextEditingController();
  bool _isMeditationStarted = false;
  String _meditationText = "";
  Timer? _messageTimer;
  Timer? _fadeTimer;
  double _opacity = 1.0;
  int _currentIndex = 0;
  final List<String> _messages = [
    "relax and watch your thought",
    "everything is okay",
    "Your life is okay",
    "life is much greater than this thought",
    "The universe is over 93 billion light years in distance",
    "Our galaxy is small",
    "the earth is miniscule",
    "You are microscopic",
    "This thought does not matter",
    "It can easily disappear",
    "and life will go on",
    "now breathe as your thought slowly disappears"
  ];

  void _startMeditation() {
    setState(() {
      _isMeditationStarted = true;
      _meditationText = _controller.text;
      _opacity = 1.0;
      _currentIndex = 0;
    });

    int messageDuration = 3;

    _messageTimer = Timer.periodic(Duration(seconds: messageDuration), (timer) {
      setState(() {
        if (_currentIndex < _messages.length) {
          _currentIndex++;
        } else {
          _messageTimer?.cancel();
          _startFadeOut();
        }
      });
    });
  }

  void _startFadeOut() {
    _fadeTimer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        if (_opacity > 0) {
          _opacity -= 0.02;
        } else {
          _fadeTimer?.cancel();
          _meditationText = "Hope you feel less stressed";
          _opacity = 1.0;
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _messageTimer?.cancel();
    _fadeTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grounding Exercise',style: TextStyle( fontSize:25,fontFamily: "BUXTONSKETCH",fontWeight: FontWeight.bold),),
      ),
      body: Container(
        color: Colors.pink.shade100,
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!_isMeditationStarted)
                Column(
                  children: [
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Enter your stressful thought here',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _startMeditation,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: Text(
                        'Start Meditation',
                        style: TextStyle(color: Colors.white, fontFamily: "BUXTONSKETCH",fontWeight: FontWeight.bold,fontSize: 25),
                      ),
                    ),
                  ],
                ),
              if (_isMeditationStarted)
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: _opacity,
                          duration: Duration(milliseconds: 100),
                          child: Text(
                            _meditationText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontFamily: "BUXTONSKETCH",
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        if (_currentIndex < _messages.length)
                          Text(
                            _messages[_currentIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontFamily: "BUXTONSKETCH",
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}





