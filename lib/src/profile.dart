// todo!!!


import 'package:flutter/material.dart';

const Routes = ['/home', '/chat', '/recipes'];



class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  void _onItemTapped(int index) {
    Navigator.pushNamed(context, Routes[index]);
  }

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Recipes',
          ),
      ],
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
    ),
    body: const Center(
      child: const Image(image: const AssetImage('images/profile.png')),
    ),
  );
}
}

// return const Image(image: AssetImage(