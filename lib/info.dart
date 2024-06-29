import 'package:flutter/material.dart';

class MentalHealthIssuesPage extends StatelessWidget {
  const MentalHealthIssuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signs of Fundamental Mental Health Issues'),
      ),
      body: Container(
        color: Colors.pink.shade100,
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'Signs of Fundamental Mental Health Issues',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '1. Anxiety',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Anxiety is characterized by excessive worry, nervousness, and fear. It often involves physical symptoms such as increased heart rate, sweating, and trembling.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              'How to Identify: Persistent worry or fear about everyday situations, avoiding places or situations that cause anxiety, and experiencing physical symptoms like restlessness, fatigue, or muscle tension.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              '2. Overwhelm',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Feeling overwhelmed is a state of being unable to cope with the demands of daily life. It can result from stress, high workload, or emotional challenges.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              'How to Identify: Difficulty concentrating, feeling constantly stressed or anxious, struggling to manage daily tasks, and experiencing emotional outbursts or a sense of helplessness.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              '3. Depression',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Depression is a mood disorder characterized by persistent feelings of sadness, hopelessness, and a lack of interest or pleasure in activities. It can also involve changes in sleep, appetite, and energy levels.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              'How to Identify: Persistent sadness or low mood, loss of interest in activities once enjoyed, changes in appetite or weight, difficulty sleeping or oversleeping, and feelings of worthlessness or excessive guilt.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              '4. PTSD (Post-Traumatic Stress Disorder)',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'PTSD is a mental health condition triggered by experiencing or witnessing a traumatic event. Symptoms include flashbacks, nightmares, severe anxiety, and uncontrollable thoughts about the event.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              'How to Identify: Reliving the traumatic event through flashbacks or nightmares, avoiding reminders of the trauma, heightened reactivity or jumpiness, and persistent negative thoughts or feelings about oneself or others.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              '5. Sadness',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sadness is a natural emotion, but when it is intense, prolonged, or disproportionate to the situation, it may be a sign of a mental health issue. It often involves feelings of emptiness and despair.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              'How to Identify: Persistent feelings of emptiness or despair, crying frequently without a clear reason, withdrawal from social interactions, and a noticeable decrease in energy or motivation.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}