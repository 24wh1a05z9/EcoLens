import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterLayoutApp());
}

class FlutterLayoutApp extends StatelessWidget {
  const FlutterLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: const LayoutDemoPage(),
    );
  }
}

class LayoutDemoPage extends StatelessWidget {
  const LayoutDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Layouts',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Layout widgets',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 6),
            Text(
              'Three ways to arrange widgets in Flutter.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey.shade700,
                  ),
            ),
            const SizedBox(height: 20),
            _section(
              title: 'Row',
              description: 'Places children next to each other horizontally.',
              child: Row(
                children: const [
                  _LayoutTile(
                    icon: Icons.looks_one,
                    label: 'First',
                    color: Color(0xFFE0F2F1),
                  ),
                  SizedBox(width: 8),
                  _LayoutTile(
                    icon: Icons.looks_two,
                    label: 'Second',
                    color: Color(0xFFB2DFDB),
                  ),
                  SizedBox(width: 8),
                  _LayoutTile(
                    icon: Icons.looks_3,
                    label: 'Third',
                    color: Color(0xFF80CBC4),
                  ),
                ],
              ),
            ),
            _section(
              title: 'Column',
              description: 'Places children one below another vertically.',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  _ColumnItem(number: '01', label: 'First item'),
                  SizedBox(height: 8),
                  _ColumnItem(number: '02', label: 'Second item'),
                  SizedBox(height: 8),
                  _ColumnItem(number: '03', label: 'Third item'),
                ],
              ),
            ),
            _section(
              title: 'Stack',
              description: 'Layers children on top of each other.',
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFE0F2F1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      right: 16,
                      child: Container(
                        width: 62,
                        height: 62,
                        decoration: const BoxDecoration(
                          color: Color(0xFF80CBC4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 14,
                      left: 18,
                      child: Container(
                        width: 46,
                        height: 46,
                        decoration: const BoxDecoration(
                          color: Color(0xFF4DB6AC),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Center(
                      child: Card(
                        elevation: 3,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          child: Text(
                            'On top of the background',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _section({
    required String title,
    required String description,
    required Widget child,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(color: Colors.grey.shade700),
            ),
            const SizedBox(height: 16),
            child,
          ],
        ),
      ),
    );
  }
}

class _LayoutTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _LayoutTile({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.teal.shade800),
            const SizedBox(height: 6),
            Text(label),
          ],
        ),
      ),
    );
  }
}

class _ColumnItem extends StatelessWidget {
  final String number;
  final String label;

  const _ColumnItem({
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.teal.shade100,
            child: Text(
              number,
              style: TextStyle(
                fontSize: 11,
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(label),
        ],
      ),
    );
  }
}

// =====================================================
// HOME PAGE
// =====================================================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HealthCare',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF1565C0),
                    Color(0xFF42A5F5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -35,
                    right: -20,
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.10),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -55,
                    right: 75,
                    child: Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Hello, Keerthana 👋',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Find the right doctor for you',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 14),
                              OutlinedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DoctorsPage(),
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.search, size: 18),
                                label: const Text('Find a doctor'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  side: const BorderSide(
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(
                          Icons.health_and_safety,
                          color: Colors.white,
                          size: 54,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // SEARCH
            TextField(
              decoration: InputDecoration(
                hintText: 'Search doctors or specialties',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Specialties',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // SPECIALTIES
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  specialtyIcon(
                    Icons.favorite,
                    'Cardiology',
                  ),
                  specialtyIcon(
                    Icons.psychology,
                    'Neurology',
                  ),
                  specialtyIcon(
                    Icons.child_care,
                    'Pediatrics',
                  ),
                  specialtyIcon(
                    Icons.visibility,
                    'Eye Care',
                  ),
                  specialtyIcon(
                    Icons.medical_services,
                    'Dentist',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Featured Doctors',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            doctorCard(
              context,
              'Dr. Ananya Sharma',
              'Cardiologist',
              '4.9',
            ),

            doctorCard(
              context,
              'Dr. Rahul Reddy',
              'Neurologist',
              '4.8',
            ),

            doctorCard(
              context,
              'Dr. Priya Singh',
              'Pediatrician',
              '4.7',
            ),

            doctorCard(
              context,
              'Dr. Arjun Rao',
              'Dermatologist',
              '4.8',
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DoctorsPage(),
              ),
            );
          }

          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const AppointmentsPage(),
              ),
            );
          }

          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          }
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget specialtyIcon(
    IconData icon,
    String title,
  ) {
    return Container(
      width: 85,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            child: Icon(icon),
          ),
          const SizedBox(height: 7),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget doctorCard(
    BuildContext context,
    String name,
    String specialization,
    String rating,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),

      child: ListTile(
        contentPadding: const EdgeInsets.all(10),

        leading: const CircleAvatar(
          radius: 28,
          child: Icon(Icons.person),
        ),

        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(specialization),
        ),

        trailing: Text(
          '⭐ $rating',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DoctorDetailsPage(
                name: name,
                specialization: specialization,
                rating: rating,
              ),
            ),
          );
        },
      ),
    );
  }
}

// =====================================================
// DOCTORS PAGE
// =====================================================

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final doctors = [
      [
        'Dr. Ananya Sharma',
        'Cardiologist',
        '4.9',
      ],
      [
        'Dr. Rahul Reddy',
        'Neurologist',
        '4.8',
      ],
      [
        'Dr. Priya Singh',
        'Pediatrician',
        '4.7',
      ],
      [
        'Dr. Arjun Rao',
        'Dermatologist',
        '4.8',
      ],
      [
        'Dr. Sneha Kapoor',
        'Dentist',
        '4.9',
      ],
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors'),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: doctors.length,

        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),

            child: ListTile(
              contentPadding: const EdgeInsets.all(10),

              leading: const CircleAvatar(
                radius: 27,
                child: Icon(Icons.person),
              ),

              title: Text(
                doctors[index][0],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(doctors[index][1]),
              ),

              trailing: Text(
                '⭐ ${doctors[index][2]}',
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DoctorDetailsPage(
                      name: doctors[index][0],
                      specialization: doctors[index][1],
                      rating: doctors[index][2],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// =====================================================
// DOCTOR DETAILS PAGE
// =====================================================

class DoctorDetailsPage extends StatelessWidget {
  final String name;
  final String specialization;
  final String rating;

  const DoctorDetailsPage({
    super.key,
    required this.name,
    required this.specialization,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Details'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 10),

            // DOCTOR IMAGE
            const CircleAvatar(
              radius: 60,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),

            const SizedBox(height: 20),

            // NAME
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // SPECIALIZATION
            Text(
              specialization,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 10),

            // RATING
            Text(
              '⭐ $rating',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            // INFORMATION CARD
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),

                child: Column(
                  children: const [

                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      title: Text('Hospital'),
                      subtitle: Text(
                        'City Hospital, Hyderabad',
                      ),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.access_time,
                        color: Colors.blue,
                      ),
                      title: Text('Experience'),
                      subtitle: Text(
                        '10+ Years Experience',
                      ),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.currency_rupee,
                        color: Colors.blue,
                      ),
                      title: Text('Consultation Fee'),
                      subtitle: Text('₹500'),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.verified,
                        color: Colors.green,
                      ),
                      title: Text('Availability'),
                      subtitle: Text(
                        'Monday - Saturday',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            // BOOK BUTTON
            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const BookAppointmentPage(),
                    ),
                  );
                },

                icon: const Icon(
                  Icons.calendar_month,
                ),

                label: const Text(
                  'Book Appointment',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// =====================================================
// BOOK APPOINTMENT PAGE
// =====================================================

class BookAppointmentPage extends StatefulWidget {
  const BookAppointmentPage({super.key});

  @override
  State<BookAppointmentPage> createState() =>
      _BookAppointmentPageState();
}

class _BookAppointmentPageState
    extends State<BookAppointmentPage> {

  DateTime selectedDate = DateTime.now();

  String selectedTime = '10:00 AM';

  final List<String> times = [
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '02:00 PM',
    '04:00 PM',
    '06:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Appointment'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Select Date',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // DATE BUTTON
            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                onPressed: () async {

                  final date = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2030),
                  );

                  if (date != null) {
                    setState(() {
                      selectedDate = date;
                    });
                  }
                },

                icon: const Icon(
                  Icons.calendar_month,
                ),

                label: Text(
                  '${selectedDate.day}/'
                  '${selectedDate.month}/'
                  '${selectedDate.year}',
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Select Time',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // TIME OPTIONS
            Wrap(
              spacing: 10,
              runSpacing: 10,

              children: times.map(
                (time) {

                  return ChoiceChip(
                    label: Text(time),

                    selected:
                        selectedTime == time,

                    onSelected: (selected) {

                      if (selected) {
                        setState(() {
                          selectedTime = time;
                        });
                      }
                    },
                  );
                },
              ).toList(),
            ),

            const SizedBox(height: 30),

            // SUMMARY
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    const Text(
                      'Appointment Summary',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      'Date: ${selectedDate.day}/'
                      '${selectedDate.month}/'
                      '${selectedDate.year}',
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Time: $selectedTime',
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Consultation Fee: ₹500',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // CONFIRM BUTTON
            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {

                  showDialog(
                    context: context,

                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                          'Appointment Confirmed!',
                        ),

                        content: Text(
                          'Your appointment has been '
                          'booked for $selectedTime.',
                        ),

                        actions: [
                          TextButton(
                            onPressed: () {

                              Navigator.pop(context);

                              Navigator.pop(context);
                            },

                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },

                child: const Text(
                  'Confirm Appointment',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

// =====================================================
// APPOINTMENTS PAGE
// =====================================================

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Appointments'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            appointmentCard(
              'Dr. Ananya Sharma',
              'Cardiologist',
              '10 October 2026',
              '10:00 AM',
            ),

            appointmentCard(
              'Dr. Rahul Reddy',
              'Neurologist',
              '15 October 2026',
              '02:00 PM',
            ),

            appointmentCard(
              'Dr. Priya Singh',
              'Pediatrician',
              '20 October 2026',
              '04:00 PM',
            ),
          ],
        ),
      ),
    );
  }

  Widget appointmentCard(
    String doctor,
    String specialization,
    String date,
    String time,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),

      child: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          children: [

            ListTile(
              contentPadding:
                  EdgeInsets.zero,

              leading: const CircleAvatar(
                radius: 27,
                child: Icon(Icons.person),
              ),

              title: Text(
                doctor,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                specialization,
              ),

              trailing: const Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
            ),

            const Divider(),

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,

              children: [

                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      size: 18,
                    ),

                    const SizedBox(width: 5),

                    Text(date),
                  ],
                ),

                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 18,
                    ),

                    const SizedBox(width: 5),

                    Text(time),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// =====================================================
// PROFILE PAGE
// =====================================================

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const CircleAvatar(
              radius: 55,
              child: Icon(
                Icons.person,
                size: 55,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Keerthana',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'keerthana@example.com',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            profileOption(
              Icons.person_outline,
              'Personal Information',
            ),

            profileOption(
              Icons.notifications_none,
              'Notifications',
            ),

            profileOption(
              Icons.settings_outlined,
              'Settings',
            ),

            profileOption(
              Icons.help_outline,
              'Help & Support',
            ),

            profileOption(
              Icons.logout,
              'Logout',
            ),
          ],
        ),
      ),
    );
  }

  Widget profileOption(
    IconData icon,
    String title,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),

      child: ListTile(
        leading: Icon(icon),

        title: Text(title),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),

        onTap: () {},
      ),
    );
  }
}