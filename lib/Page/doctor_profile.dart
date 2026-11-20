import 'package:flutter/material.dart';
import 'package:doctor_profile_ui/widgets/details_tile.dart';
import 'package:doctor_profile_ui/widgets/main_button.dart';
import 'package:doctor_profile_ui/widgets/profile_header.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        centerTitle: true,
        title: Text(
          'Doctor Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),
              SizedBox(height: 20),
              Text(
                'About',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5),
              Text(
                'Professor Of Eye Special - Former Head Of \nDepartement Of Eye Special, Cairo University.',
              ),
              SizedBox(height: 20),
              _buildLocationUi(),
              Divider(indent: 20, height: 20, thickness: 2),
              SizedBox(height: 20),
              _buildContactUi(),
              SizedBox(height: 20,),
              MainButton(text: 'Chat With Dr.Mohamed', bdColor: Colors.green, textColor: Colors.white, onPressed: () {},),
              SizedBox(height: 10,),
              MainButton(text: 'Book Appointment',textColor: Colors.white, onPressed: () {},),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactUi() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Info',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.indigoAccent.withValues(alpha: .4),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              DetailsTile(
                lebel: 'jVU5o@example.com',
                icon: Icons.mail_lock_rounded,
              ),
              SizedBox(height: 10),
              DetailsTile(lebel: '00011000000', icon: Icons.call),
              SizedBox(height: 10),
              DetailsTile(lebel: '01233333333', icon: Icons.call),
            ],
          ),
        ),
      ],
    );
  }

  Container _buildLocationUi() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.indigoAccent.withValues(alpha: .4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          DetailsTile(
            lebel: 'Cairo University Hospital',
            icon: Icons.local_hospital,
          ),
          SizedBox(height: 10),
          DetailsTile(
            lebel: '12:00 pm - 5:00 pm',
            icon: Icons.watch_later_rounded,
          ),
          SizedBox(height: 10),
          DetailsTile(lebel: 'Cairo, Egypt', icon: Icons.location_on_rounded),
        ],
      ),
    );
  }
}
