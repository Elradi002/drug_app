import 'package:drug_app/models/constants.dart';
import 'package:flutter/material.dart';

import '../models/story.dart';

class Library extends StatelessWidget {
  static const routeName = '/library';
  List<Story> dummyData = [
    Story(
        title: 'انا و المخدرات - قصة تعافى من الادمان',
        body:
            "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف وا"),
    Story(
        title: 'انا و المخدرات - قصة تعافى من الادمان',
        body:
            "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف وا"),
    Story(
        title: 'انا و المخدرات - قصة تعافى من الادمان',
        body:
            "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف وا"),
    Story(
        title: 'انا و المخدرات - قصة تعافى من الادمان',
        body:
            "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف وا"),
    Story(
        title: 'انا و المخدرات - قصة تعافى من الادمان',
        body:
            "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف وا"),
    Story(
        title: 'انا و المخدرات - قصة تعافى من الادمان',
        body:
            "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف وا"),
    Story(
        title: 'انا و المخدرات - قصة تعافى من الادمان',
        body:
            "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف وا"),
    Story(
        title: 'انا و المخدرات - قصة تعافى من الادمان',
        body:
            "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف وا"),
  ];

  Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        elevation: 0,
        title: const Text('مكتبة عافر', style: kXLargeTittle),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (ctx, index) {
              return InkWell(
                onTap: () {
                  // Navigator.of(context).pushNamed(
                  //   FoundItemDetailsScreen.routeName,
                  //   arguments: index,
                  // );
                },
                child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dummyData[index].title,
                          overflow: TextOverflow.ellipsis,
                          style: kLargeTittle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          dummyData[index].body,
                          overflow: TextOverflow.ellipsis,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
