import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/constants.dart';

class LibraryDetailsScreen extends StatelessWidget {
  const LibraryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        elevation: 0,
        title: const Text('', style: kXLargeTittle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'انا و المخدرات - قصة تعافى من الادمان',
                style: kLargeTittle,
              ),
              SizedBox(height: 15),
              Text(
                "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف والندم مما فعلت، ولكنني اعتبرت هذا الشعور شيء عابر لم أتوقف عنده كثيراً .. ثم وجدتني ادخن باستمرار، واختفى عندي اي شعور بالذنب او الخوف، بل تبدل هذا الشعور بإحساس من الثقة والقوة. كنت حينها أحاول دائما استكشاف كل ما يحيط بي واجرب ما تراه عيني، ولست أذكر هل هذا كان بسبب حكم سن المراهقة أم أنني كنت مختلف ويزيد عندي الفضول عن غيري، حتى رأيت أحدهم يأخذ بعض الحبوب، وبعد عدة دقائق أجد سلوكه قد تغير، فهو يضحك ثم إذا أراد التركيز في شيء ما فإنه يركز كما يريد، وحين سألته ماهذا؟ أخبرني أن هذا يساعده على التركيز ويجعل مزاجه صافياً لا تعكره متطلبات اليوم، بل انه يساعده على استذكار دروسه بكل تركيز. عدت لمنزلي في هذا اليوم وكلي تساؤل هل فعلاً ما يقوله صحيح؟ هل هناك شيء يفعل ذلك الصفاء المزاجي والقدرة على التركيز العالي؟ هذا ما ابحث عنه اصلاً، وهذا هو السحر ذاته.",
                style: kDetailsText,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
