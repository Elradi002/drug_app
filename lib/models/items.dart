import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  const Item1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
              "عندما تكرر مهمة ما مرارًا وتكرارًا، فإنها تصبح عادة أساسية لديك أن العادات اليومية هي التي تُشكِل مسار اليوم.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
              "سواء كنت تُكوِن عادات صعبة أو سهلة المِراس، فإن ما تفعله هو إعادة تنظيم مسار يومك.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
              "من الصعب التخلص من العادات السيئة، وقد يستغرق دماغك جهدًا أكبر لكسر تلك العادات، ولكن سرعان ما سيعتاد العقل على النمط الجديد ويستغنى تدريجيًا عن العادات القديمة السيئة مقابل الجديدة.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(colors: [Colors.blueGrey, Colors.grey]),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
              " مهما كانت الأنماط المناسبة لك، فإن بناء العادات الجديدة يساعدك على البقاء بعيدًا عن المخدرات.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
