import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(strokeWidth: 6,),
          Text("PAROUUUUUUUUUUU",
            style: TextStyle(fontSize: 32),
          )
        ],
      ),
    );
  }
}