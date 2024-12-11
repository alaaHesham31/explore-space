import 'package:explore_space/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      body:Stack(
          children: [
            Image.asset('assets/images/intro.png'),
            const Positioned(
              top: 300,
              left: 16,
              child: Text(
                'Explore\nThe\nUniverse ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Inter'),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 16,
              right: 16,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const HomeScreen(),));
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(const Color(0xFFEE403D)),
                  fixedSize: WidgetStateProperty.all<Size>(
                    const Size(double.infinity, 60.0), 
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w600,fontFamily: 'Inter'),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      
    );
  }
}
