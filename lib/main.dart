import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF4F6FA),
      ),
      home: const StudentProfileScreen(),
    );
  }
}

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 55, color: Colors.indigo),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Ahmad Rahimi',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Computer Science Student',
                      style: TextStyle(fontSize: 15, color: Colors.white70),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Active Student',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SectionTitle('Personal Information'),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: _cardDecoration(),
                child: const Column(
                  children: [
                    InfoRow(icon: Icons.badge_outlined, label: 'Student ID', value: 'STU-2026-001'),
                    Divider(height: 25),
                    InfoRow(icon: Icons.cake_outlined, label: 'Age', value: '22 Years'),
                    Divider(height: 25),
                    InfoRow(icon: Icons.school_outlined, label: 'Department', value: 'Computer Science'),
                    Divider(height: 25),
                    InfoRow(icon: Icons.calendar_month, label: 'Semester', value: '5th Semester'),
                    Divider(height: 25),
                    InfoRow(icon: Icons.email_outlined, label: 'Email', value: 'ahmad.rahimi@example.com'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SectionTitle('Academic Information'),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: _cardDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Current GPA', style: TextStyle(fontSize: 15, color: Colors.grey)),
                    const SizedBox(height: 5),
                    const Text(
                      '3.65 / 4.00',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.indigo),
                    ),
                    const SizedBox(height: 15),
                    const Divider(),
                    const SizedBox(height: 10),
                    const Text('Enrolled Courses', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    const RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                        children: [
                          TextSpan(text: '1. '),
                          TextSpan(
                            text: 'Advanced Mobile Programming',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('2. Database Management Systems'),
                    const SizedBox(height: 8),
                    const Text('3. Software Project Management'),
                    const SizedBox(height: 8),
                    const Text('4. Data Structures and Algorithms'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SectionTitle('About Me'),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: _cardDecoration(),
                child: const Text(
                  'I am a computer science student interested in mobile application development, software engineering, database systems, and modern technologies. My goal is to become a professional software developer and build useful applications for real-world problems.',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, height: 1.6, color: Colors.black87),
                ),
              ),
              const SizedBox(height: 25),
              const Center(
                child: Text(
                  'Student Profile App © 2026',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.indigo, size: 23),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              Text(
                value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
