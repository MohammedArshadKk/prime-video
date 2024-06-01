import 'package:flutter/material.dart';

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage(
            'assets/Logo-min.png',
          ),
          height: 22,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast_outlined,
              color: Colors.white,
            )),
        SizedBox(
          height: 45,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset('assets/icons8-male-user-48.png'),
          ),
        ),
        
      ],
    );
  }
}
