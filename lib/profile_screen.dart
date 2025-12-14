import 'package:apexcify_technologys_profile_card/utils/app_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  final String profileName = "Belal Osama Khalil";
  final String profession = "Flutter and Mobile Developer";
  final String contactEmail = "belal.osama2233@gmail.com";
  final String contactPhone = "01282042729";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: const Text('My Profile',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage("https://scontent.fcai19-8.fna.fbcdn.net/v/t39.30808-6/292402666_2222345724595637_6668828167221602922_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF0nrBLix-qpLeF2Nz2kVcKnywYaqiNefWfLBhqqI159Z7vAE7vInj0HrIkEjB5pFhrD9Z6JPacqNhn7waYUOhE&_nc_ohc=4eAjd2PvKMAQ7kNvwGvsgU5&_nc_oc=AdmYeFXgmQZKle28nTNbyiuhLDT03IpjDz-xHxht2nM20xNYj1uOA_PGMfDEyLSPjVQ&_nc_zt=23&_nc_ht=scontent.fcai19-8.fna&_nc_gid=LpxwPoLIIOJnGkH1v2MKNQ&oh=00_AfkAIcyOzqV9dPPGPNx6iY6Xy_B0GorSOOqEoulRrXMBEw&oe=694497D3"),
                    backgroundColor: Colors.teal,
                  ),

                  const SizedBox(height: 15.0),
                  Text(
                    profileName,
                    style: AppStyle.profileNameStyle
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    profession.toUpperCase(),
                    style: AppStyle.professionStyle
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                      thickness: 1.5,
                    ),
                  ),
                  _buildContactRow(
                    icon: Icons.email,
                    text: contactEmail,
                  ),
                  const SizedBox(height: 10.0),
                  _buildContactRow(
                    icon: Icons.phone,
                    text: contactPhone,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildContactRow({required IconData icon, required String text}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.teal.shade100),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.teal.shade900,
            size: 24.0,
          ),
          const SizedBox(width: 20.0),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
