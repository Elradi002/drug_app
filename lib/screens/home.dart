import 'package:flutter/material.dart';

import '../models/constants.dart';
import '../widgets/slider_card.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        elevation: 0,
        title: const Text('الصفحة الرئيسية', style: kXLargeTittle),
        leading: const Icon(
          Icons.settings,
          color: Colors.grey,
        ),
      ),
      // drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('مرحبا بك !', style: kXLargeTittle),
              const SizedBox(
                height: 10,
              ),
              SliderCard(),
              SizedBox(
                height: 10,
              ),
              const Text('مكتبة عافر', style: kXLargeTittle),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: 170,
                height: 70,
                child: const Text(
                  'محتوي مفيد .....',
                  style: kDetailsText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
