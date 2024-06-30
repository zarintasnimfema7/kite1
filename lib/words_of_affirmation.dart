import 'package:flutter/material.dart';
import 'dart:math';

class WordsOfAffirmationPage extends StatefulWidget {
  @override
  _WordsOfAffirmationPageState createState() => _WordsOfAffirmationPageState();
}

class _WordsOfAffirmationPageState extends State<WordsOfAffirmationPage> {
  /* final List<String> _affirmations = [
    "I’m allowed to take up space",
    "My past is not a reflection of my future",
    "I am strong enough to make my own decisions",
    "I’m in control of how I react to others",
    "My only job is to learn and grow",
    "I’m courageous and stand up for myself",
    "I will succeed today",
    "I deserve to forgive, and I deserve to feel joy",
    "I’m worthy of love",
    "I love myself deeply",
    "My body is healthy, and I’m grateful",
    "I’m more at ease every day",
    "I’m calm, happy, and content",
    "My life is a gift and I appreciate everything I have",
    "I surround myself with positive people who will help bring out the best in me",
    "I don’t need someone else to feel happiness",
    "I’m allowed to take time to heal",
    "All is well",
    "The point of life is balance, not perfection",
    "I choose only kind words for myself and others around me",
    "My potential to succeed is limitless",
    "Difficult times allow me to appreciate the good times",
    "I deserve to forgive and be forgiven",
    "I’m in charge of my life and no one will dictate my path besides me",
    "I’m doing my best and that is enough",
    "I have the power to create change",
    "I know exactly what to do to achieve success",
    "I choose to be proud of myself",
    "I will not compare myself to strangers on the internet",
    "I am enough",
    "I let go of all that no longer serves me",
    "I am so close to achieving my goals",
    "My life gets better as I get older",
    "I can do anything I put my mind to",
    "I’m worthy of respect and acceptance",
    "My contributions to the world are valuable",
    "My needs and wants are important",
    "I make a significant difference in the lives of people around me",
    "I am blessed with amazing family and friends",
    "I attract abundance into my life",
    "My life is full of amazing opportunities that are ready for me to step into",
    "I’m free to create the life I desire",
    "I’m open to new adventures in my life",
    "I’m bold, beautiful, and brilliant",
    "My body is perfect in the way it’s intended to be",
    "When I allow my light to shine, I subconsciously give other people permission to do the same",
    "No amount of worrying can change the future",
    "To make small steps toward big goals is progress",
    "Negative thoughts only have the power I allow them",
    "I can choose to feel good",
  ];

  String _selectedAffirmation = '';

  void _generateAffirmation() {
    final random = Random();
    setState(() {
      _selectedAffirmation = _affirmations[random.nextInt(_affirmations.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Words of Affirmation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _generateAffirmation,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              child: Text(
                'Generate',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Click this red button to generate a positive affirmation',
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            if (_selectedAffirmation.isNotEmpty)
              Text(
                _selectedAffirmation,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
*/
  final List<String> activities = [
    "I’m allowed to take up space",
    "My past is not a reflection of my future",
    "I am strong enough to make my own decisions",
    "I’m in control of how I react to others",
    "My only job is to learn and grow",
    "I’m courageous and stand up for myself",
    "I will succeed today",
    "I deserve to forgive, and I deserve to feel joy",
    "I’m worthy of love",
    "I love myself deeply",
    "My body is healthy, and I’m grateful",
    "I’m more at ease every day",
    "I’m calm, happy, and content",
    "My life is a gift and I appreciate everything I have",
    "I surround myself with positive people who will help bring out the best in me",
    "I don’t need someone else to feel happiness",
    "I’m allowed to take time to heal",
    "All is well",
    "The point of life is balance, not perfection",
    "I choose only kind words for myself and others around me",
    "My potential to succeed is limitless",
    "Difficult times allow me to appreciate the good times",
    "I deserve to forgive and be forgiven",
    "I’m in charge of my life and no one will dictate my path besides me",
    "I’m doing my best and that is enough",
    "I have the power to create change",
    "I know exactly what to do to achieve success",
    "I choose to be proud of myself",
    "I will not compare myself to strangers on the internet",
    "I am enough",
    "I let go of all that no longer serves me",
    "I am so close to achieving my goals",
    "My life gets better as I get older",
    "I can do anything I put my mind to",
    "I’m worthy of respect and acceptance",
    "My contributions to the world are valuable",
    "My needs and wants are important",
    "I make a significant difference in the lives of people around me",
    "I am blessed with amazing family and friends",
    "I attract abundance into my life",
    "My life is full of amazing opportunities that are ready for me to step into",
    "I’m free to create the life I desire",
    "I’m open to new adventures in my life",
    "I’m bold, beautiful, and brilliant",
    "My body is perfect in the way it’s intended to be",
    "When I allow my light to shine, I subconsciously give other people permission to do the same",
    "No amount of worrying can change the future",
    "To make small steps toward big goals is progress",
    "Negative thoughts only have the power I allow them",
    "I can choose to feel good",
  ];

  String _selectedActivity = "Click the red button to generate a positive word of affirmation";

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
        title: Text('Positive Words of Affirmations'),
      ),
      body: Container(
        color: Colors.pink.shade100,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Button background color
                minimumSize: Size(200, 50),
              ),
              onPressed: _generateRandomActivity,
              child: Text(
                'Generate Words of Affirmations',
                style: TextStyle(color: Colors.white), // Button text color
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Center(
                child: Text(
                  _selectedActivity,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
