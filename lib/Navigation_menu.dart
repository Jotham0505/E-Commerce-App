import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Home'),
        ],
        
      ),
      body: Container(
        
      ),
    );
  }
}