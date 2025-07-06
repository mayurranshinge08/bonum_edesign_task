import 'package:flutter/material.dart';

class DispactDetailsPage extends StatelessWidget {
  const DispactDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.deepPurple.withOpacity(0.1),
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Dispatch Details",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      width: 150,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          "Add Dispatch +",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                _buildDispatchCard(
                  accNo: '42346445345',
                  accStore: 'Navi Mumbai',
                  accImage:
                      'https://images.unsplash.com/photo-1611930022073-b7a4ba5fcccd?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  accHands: '5',
                  accTruck: '64',
                  accTruckNo: '562',
                  accGroups: '33',
                  accRestore: '43.42',
                ),
                SizedBox(height: 10),
                _buildDispatchCard(
                  accNo: '56436514316',
                  accStore: 'Malvani',
                  accTruck: '142',
                  accImage:
                      'https://plus.unsplash.com/premium_photo-1664392147011-2a720f214e01?q=80&w=1478&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  accGroups: '302',
                  accRestore: '424.2',
                  accTruckNo: '6672',
                  accHands: '3',
                ), // ➕ Added second container
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDispatchCard({
    required String? accNo,
    required String? accStore,
    required String? accTruck,
    required String? accImage,
    required String? accTruckNo,
    required String? accHands,
    required String? accGroups,
    required String? accRestore,
  }) {
    return Container(
      height: 400,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.only(left: 10.0, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            accNo!,
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(Icons.store),
              SizedBox(width: 5),
              Text(
                accStore!,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.fire_truck_sharp),
              SizedBox(width: 5),
              Text(
                accTruck!,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          Row(
            children: [
              Icon(Icons.fire_truck_sharp),
              SizedBox(width: 5),
              Text(
                accTruckNo!,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Text(
            "Dispatch images",
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurple, width: 3),
            ),
            child: Image.network(
              accImage!,
              /*'https://plus.unsplash.com/premium_photo-1664392147011-2a720f214e01?q=80&w=1478&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'*/
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "Fruits Details",
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Icon(Icons.verified_user),
              SizedBox(width: 5),
              Text(
                accHands!,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.groups),
              SizedBox(width: 5),
              Text(
                accGroups!,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          Row(
            children: [
              Icon(Icons.restore),
              SizedBox(width: 5),
              Text(
                accRestore!,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
