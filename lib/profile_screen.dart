import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/beach.jpg'),
          Transform.translate(
            offset: const Offset(0, 180),
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildProfileDetails(context),
                _buildActions(),
              ],
            ),
          )
        ],
      ),
    );
  }

  //BUILD PROFILE IMAGE
  Widget _buildProfileImage(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/dog.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  //BUILD PROFILE DETAILS
  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Wolfram Barkovich',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          _buildDetailRow('Age', '4'),
          _buildDetailRow('Status', 'Good Boy'),
        ],
      ),
    );
  }

  //BUILD DETAIL ROW
  Widget _buildDetailRow(String heading, String val) {
    return Row(
      children: <Widget>[
        Text(
          '$heading.',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(val),
      ],
    );
  }

  //BUILD ACTIONS
  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(Icons.restaurant, 'Feed'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions_walk, 'Walk'),
      ],
    );
  }

  //BUILD ICON
  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Icon(icon, size: 40),
          Text(text),
        ],
      ),
    );
  }
}
