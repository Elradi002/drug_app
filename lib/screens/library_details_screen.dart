import 'package:article/article.dart';
import 'package:drug_app/models/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryDetailsScreen extends StatelessWidget {
  static const routeName = '/library-details-screen';
  const LibraryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.teal),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ' قصة تعافى',
          style: kXLargeTittle,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Article(
        maxWidth: 720,
        header: const H3(
          child: 'انا و المخدرات - قصة تعافى من الادمان',
        ),
        body: Column(
          children: [
            Section(
              child: Column(
                children: const [
                  H5(
                    child:
                        "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف والندم مما فعلت، ولكنني اعتبرت هذا الشعور شيء عابر لم أتوقف عنده كثيراً .. ثم وجدتني ادخن باستمرار، واختفى عندي اي شعور بالذنب او الخوف، بل تبدل هذا الشعور بإحساس من الثقة والقوة. كنت حينها أحاول دائما استكشاف كل ما يحيط بي واجرب ما تراه عيني، ولست أذكر هل هذا كان بسبب حكم سن المراهقة أم أنني كنت مختلف ويزيد عندي الفضول عن غيري، حتى رأيت أحدهم يأخذ بعض الحبوب، وبعد عدة دقائق أجد سلوكه قد تغير، فهو يضحك ثم إذا أراد التركيز في شيء ما فإنه يركز كما يريد، وحين سألته ماهذا؟ أخبرني أن هذا يساعده على التركيز ويجعل مزاجه صافياً لا تعكره متطلبات اليوم، بل انه يساعده على استذكار دروسه بكل تركيز. عدت لمنزلي في هذا اليوم وكلي تساؤل هل فعلاً ما يقوله صحيح؟ هل هناك شيء يفعل ذلك الصفاء المزاجي والقدرة على التركيز العالي؟ هذا ما ابحث عنه اصلاً، وهذا هو السحر ذاته.",
                  ),

                  //Other Widgets.
                ],
              ),
            ),
          ],
        ),
        footer: const P(
          child: "للمزيد الرجاء العودة الي مكتبة عـــافر",
        ),
      ),
    );
  }
}

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[200],
//         centerTitle: true,
//         elevation: 0,
//         title: const Text('', style: kXLargeTittle),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(
//                 'انا و المخدرات - قصة تعافى من الادمان',
//                 style: kLargeTittle,
//               ),
//               SizedBox(height: 15),
//               Text(
//                 "كنت في الثالثة عشر من عمري عندما شربت اول سيجارة، كان شعور غريب بين الخوف والندم مما فعلت، ولكنني اعتبرت هذا الشعور شيء عابر لم أتوقف عنده كثيراً .. ثم وجدتني ادخن باستمرار، واختفى عندي اي شعور بالذنب او الخوف، بل تبدل هذا الشعور بإحساس من الثقة والقوة. كنت حينها أحاول دائما استكشاف كل ما يحيط بي واجرب ما تراه عيني، ولست أذكر هل هذا كان بسبب حكم سن المراهقة أم أنني كنت مختلف ويزيد عندي الفضول عن غيري، حتى رأيت أحدهم يأخذ بعض الحبوب، وبعد عدة دقائق أجد سلوكه قد تغير، فهو يضحك ثم إذا أراد التركيز في شيء ما فإنه يركز كما يريد، وحين سألته ماهذا؟ أخبرني أن هذا يساعده على التركيز ويجعل مزاجه صافياً لا تعكره متطلبات اليوم، بل انه يساعده على استذكار دروسه بكل تركيز. عدت لمنزلي في هذا اليوم وكلي تساؤل هل فعلاً ما يقوله صحيح؟ هل هناك شيء يفعل ذلك الصفاء المزاجي والقدرة على التركيز العالي؟ هذا ما ابحث عنه اصلاً، وهذا هو السحر ذاته.",
//                 style: kDetailsText,
//                 textAlign: TextAlign.justify,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
