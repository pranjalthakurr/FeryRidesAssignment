import 'package:flutter/material.dart';

class RideDetailsScreen extends StatelessWidget {
  final String rideName;
  final String timeToArrive;
  final String amountToPay;
  final String driverName;
  final String driverContact;
  final String vehicleDetails;

  const RideDetailsScreen({
    super.key,
    required this.rideName,
    required this.timeToArrive,
    required this.amountToPay,
    required this.driverName,
    required this.driverContact,
    required this.vehicleDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rideName),
        backgroundColor: const Color.fromRGBO(255, 134, 188, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ride Details",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            // Ride Details Box
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.shade100,
                    blurRadius: 15.0,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.access_time, color: Colors.pink),
                      const SizedBox(width: 10),
                      Text(
                        "Arrival Time: $timeToArrive",
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(Icons.monetization_on, color: Colors.pink),
                      const SizedBox(width: 10),
                      Text(
                        "Amount to Pay: ₹$amountToPay",
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 10),
                  // Driver Information Title aligned to the left
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Driver Information",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(Icons.person, color: Colors.pink),
                      const SizedBox(width: 10),
                      Text(
                        "Driver Name: $driverName",
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.pink),
                      const SizedBox(width: 10),
                      Text(
                        "Contact: $driverContact",
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(Icons.directions_car, color: Colors.pink),
                      const SizedBox(width: 10),
                      Text(
                        "Vehicle Details: $vehicleDetails",
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
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
