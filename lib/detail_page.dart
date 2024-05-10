import 'package:flutter/material.dart';
import 'package:kuisprakmobile/character.dart';

class DetailPage extends StatelessWidget {
  final Character character;

  const DetailPage({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          character.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xEEF7FF),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildDetailItem('Height', character.height),
              _buildDetailItem('Mass', character.mass),
              _buildDetailItem('Hair Color', character.hairColor),
              _buildDetailItem('Skin Color', character.skinColor),
              _buildDetailItem('Eye Color', character.eyeColor),
              _buildDetailItem('Birth Year', character.birthYear),
              _buildDetailItem('Gender', character.gender),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title + ":",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
