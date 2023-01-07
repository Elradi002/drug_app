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
              const SliderCard(),
              const SizedBox(
                height: 10,
              ),
              const Text('مشروع عافر', style: kLargeTittle),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: 170,
                height: 90,
                child: const Text(
                  'يهدف المشروع لثقافة التثقيف النفسي وهو جانب من جوانب العلاج الذى يقدم المعلومات والتوعيةوالدعم للألشخاص الذين يتلقون العلاج من ادمان المخدرات او الكحول او السلوكيات القهرية.',
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
