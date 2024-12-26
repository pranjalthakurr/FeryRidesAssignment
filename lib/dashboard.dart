import 'package:flutter/material.dart';
import 'ridedetails.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: const Color.fromRGBO(255, 134, 188, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Mock Ride 1
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RideDetailsScreen(
                      rideName: "Pink Auto",
                      timeToArrive: "10 mins",
                      amountToPay: "200",
                      driverName: "Anita Sharma",
                      driverContact: "9876543210",
                      vehicleDetails: "White Swift DL3CAB1234",
                    ),
                  ),
                );
              },
              child: RideCard(
                title: "Pink Auto",
                description: "A convenient auto ride service.",
                imagePath: "assets/images/auto.png", // Image added here
              ),
            ),
            const SizedBox(height: 20),

            // Mock Ride 2
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RideDetailsScreen(
                      rideName: "Pink Sedan",
                      timeToArrive: "15 mins",
                      amountToPay: "350",
                      driverName: "Ranjana Verma",
                      driverContact: "9876545678",
                      vehicleDetails: "Silver Sedan DL26XYZ7890",
                    ),
                  ),
                );
              },
              child: RideCard(
                title: "Pink Sedan",
                description: "A luxury sedan for a comfortable ride.",
                imagePath: "assets/images/sedan.png", // Image added here
              ),
            ),
            const SizedBox(height: 20),

            // Mock Ride 3
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RideDetailsScreen(
                      rideName: "Pink Bike",
                      timeToArrive: "5 mins",
                      amountToPay: "100",
                      driverName: "Sunita Kumar",
                      driverContact: "9876549876",
                      vehicleDetails: "Black Pulsar DL05MG1234",
                    ),
                  ),
                );
              },
              child: RideCard(
                title: "Pink Bike",
                description: "Quick and affordable bike ride service.",
                imagePath: "assets/images/bike.png", // Image added here
              ),
            ),
            const SizedBox(height: 20),

            // Mock Ride 4
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RideDetailsScreen(
                      rideName: "Pink Hatchback",
                      timeToArrive: "8 mins",
                      amountToPay: "250",
                      driverName: "Mansi Kumari",
                      driverContact: "987644321",
                      vehicleDetails: "Red Maruti Swift DL02ABC4567",
                    ),
                  ),
                );
              },
              child: RideCard(
                title: "Pink Hatchback",
                description: "Compact and efficient for short rides.",
                imagePath: "assets/images/hatchback.png", // Image added here
              ),
            ),
            const SizedBox(height: 20),

            // Mock Ride 5
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RideDetailsScreen(
                      rideName: "Pink Van",
                      timeToArrive: "12 mins",
                      amountToPay: "400",
                      driverName: "Lalita Singh",
                      driverContact: "987644765",
                      vehicleDetails: "White Toyota Innova DL14XYZ5678",
                    ),
                  ),
                );
              },
              child: RideCard(
                title: "Pink Van",
                description: "Spacious for group rides.",
                imagePath: "assets/images/van.png", // Image added here
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(255, 134, 188, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.settings, color: Colors.white),
            Icon(Icons.account_circle, color: Colors.white),
            Icon(Icons.search, color: Colors.white),
            Icon(Icons.map, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class RideCard extends StatelessWidget {
  final String title;
  final String description;
  final String? imagePath;

  const RideCard({
    super.key,
    required this.title,
    required this.description,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromRGBO(255, 134, 188, 1),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(143, 148, 251, .2),
            blurRadius: 20.0,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          // Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          // Image display (if imagePath is provided)
          if (imagePath != null)
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                imagePath!,
                width: 70, // Increased image size
                height: 70, // Increased image size
              ),
            ),
        ],
      ),
    );
  }
}
