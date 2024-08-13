import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        
        
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(onPressed: , label: Text("add details"))
        ],
      ),

      
    );
  }
}