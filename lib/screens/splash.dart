import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [          
              Image.asset('asset/splash.jpg',fit: BoxFit.fill,height: MediaQuery.of(context).size.height,),
            const Positioned(
                  top: 600,
                  left: 170,
               child: SpinKitWave(
                        
                      color: Colors.green,
                      size: 50.0,
             ),
             )
          ],
        )
    );
  }
}