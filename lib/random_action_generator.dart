
import 'package:flutter/material.dart';
import 'dart:math';

class RandomActionGeneratorPage extends StatefulWidget {
  @override
  _RandomActionGeneratorPageState createState() => _RandomActionGeneratorPageState();
}

class _RandomActionGeneratorPageState extends State<RandomActionGeneratorPage> {
  final List<String> activities = [
    "Do 10 jumping jacks",
    "Take 5 deep breaths",
    "Say out loud 'I am worthy and lovable'",
    "Write a page of journal entry",
    "Take a short walk outside",
    "Listen to your favorite song",
    "Drink a glass of water",
    "Read a chapter of a book",
    "Stretch your body for 5 minutes",
    "Draw or doodle something",
    "Call a friend or family member",
    "Meditate for 5 minutes",
    "Do a quick clean-up of your space",
    "Write down three things you're grateful for",
    "Take a 10-minute nap",
    "Dance to your favorite song",
    "Watch a funny video",
    "Cook a healthy meal",
    "Try a new hobby or craft",
    "Take a relaxing bath",
    "Practice deep breathing for 5 minutes",
    "Do a random act of kindness",
    "Plan a fun activity for the weekend",
    "Spend time with a pet",
    "Look at old photos that make you happy",
    "Write a letter to your future self",
    "Do a puzzle or brain game",
    "Try a new recipe",
    "Watch your favorite movie or TV show",
    "Spend 10 minutes in nature",
    "Do a digital detox for an hour",
    "Paint your nails or do some grooming",
    "Practice yoga for 10 minutes",
    "Write a poem or short story",
    "Do some gardening or plant care",
    "Learn a new word and use it in a sentence",
    "Compliment yourself in the mirror",
    "Plan your goals for the next month",
    "Play a board game or card game",
    "Try a new workout or exercise",
    "Do some mindful coloring",
    "Sing along to your favorite song",
    "Write a thank-you note to someone",
    "Declutter a small area of your home",
    "Create a vision board",
    "Read a motivational quote",
    "Do a breathing exercise",
    "Watch a documentary on a topic you like",
    "Spend time with a loved one",
    "Write down your thoughts and feelings"
  ];

  String _selectedActivity = "Click the red button to generate a random action to perform";

  void _generateRandomActivity() {
    final random = Random();
    setState(() {
      _selectedActivity = activities[random.nextInt(activities.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Action Generator'),
      ),
      body: Container(
        color: Colors.pink.shade100,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Button background color
                minimumSize: Size(250, 70),
              ),
              onPressed: _generateRandomActivity,
              child: Text(
                'Generate Action',
                style: TextStyle(color: Colors.white,fontSize: 25), // Button text color
              ),
            ),
            SizedBox(height: 16),

            Center(
              child: Text(
                _selectedActivity,
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
