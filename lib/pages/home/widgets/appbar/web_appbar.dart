import 'package:example_web_responsiveness/pages/home/widgets/appbar/web_appbar_responsive_content.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          const Text('Flutter'),
          const SizedBox(
            width: 32,
          ),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                primary: Colors.white,
                side: const BorderSide(width: 3.0, color: Colors.white),
              ),
              child: const Text(
                'Fazer login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: const Text(
                'Cadastre-se',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
