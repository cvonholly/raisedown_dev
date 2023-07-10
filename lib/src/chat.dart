
import 'package:flutter/material.dart';

const Routes = ['/home', '/chat', '/recipes'];



class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<ChatPage> {
  void _onItemTapped(int index) {
    Navigator.pushNamed(context, Routes[index]);
  }

  int _selectedIndex = 1;

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
      child: const Image(image: const AssetImage('images/chat.png')),
    ),
  );
}
}

// return const Image(image: AssetImage(