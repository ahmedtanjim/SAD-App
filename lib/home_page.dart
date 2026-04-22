import 'package:flutter/material.dart';
import 'package:sda/contact_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/tanjim.jpeg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Tanjim Ahmed',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'contact@tanjimahmed.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              'About Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'I am a software engineer with a passion for building web and mobile applications. I am a senior software engineer with 5 years of experience in the industry. I have worked on a variety of projects, from small startups to large enterprises. I am a quick learner and I am always looking to improve my skills.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Skills',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Chip(
                        label: Text('Flutter'),
                        backgroundColor: Colors.blue,
                      ),
                      Chip(label: Text('Dart'), backgroundColor: Colors.blue),
                      Chip(label: Text('Kotlin'), backgroundColor: Colors.blue),
                      Chip(label: Text('Java'), backgroundColor: Colors.blue),
                      Chip(label: Text('Python'), backgroundColor: Colors.blue),
                      Chip(label: Text('SQL'), backgroundColor: Colors.blue),
                      Chip(label: Text('NoSQL'), backgroundColor: Colors.blue),
                      Chip(label: Text('CI/CD'), backgroundColor: Colors.blue),
                      Chip(label: Text('DevOps'), backgroundColor: Colors.blue),
                      Chip(label: Text('Jira'), backgroundColor: Colors.blue),
                      Chip(label: Text('GitHub'), backgroundColor: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Education',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Bachelor of Science in Computer Science and Engineering',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    'Leading University',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    '2024 - 2028',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    'CGPA: 3.92',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Experience',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Senior Software Engineer',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    'Crazybot Studio',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    '2020 - Present',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Projects',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ContactPage();
                          },
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                    ),
                    child: Text(
                      "Contact Me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
