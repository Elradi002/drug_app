import 'package:drug_app/models/constants.dart';
import 'package:drug_app/screens/library_details_screen.dart';
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
        title: 'قصة مدمن مخدرات معتقل:',
        body:
            "كانت حياتي قبل اعتقالي أكثر من جحيم على األرض من الحياة، تعديت على حقوق الجميع وتخطيت كل شيء من أجلسعادتي الشخصية، فقد كان وجودي متمحوراً حول تلبية احتياجاتي الخاصة، وشملت أساليبي غير المشروعة سرقةاألموال من عائلتي، وبيع المخدرات وقتما استطعت ذلك.كان اإلدمان بالنسبة لي هو كل شيء في حياتي، ولكننى لم أكن سعيداً بحياتي، وكلما كنت اشعر باليأس أكثر، كنت أقومبتعاطي المخدرات لنسيان ما كنت أشعر به، ولكنني اتساءل االن، هل كانت تلك الطريقة الصحيحة للتعامل مع هذهالمشاعر السلبية، باالضافة الى الشعور بالوحدة أو العزلة؟ ...على االغلب ال.وبعد ذلك، تورطت في كثير من المشكالت والجرائم التي قادتني إلى السجن، وفي السجن وجدت نفسي وحيدا من جديد،بعيدا حتى عن المخدرات، ولم استطع ان احصل على ما اريد بين جدران السجن االربعة، تعرضت في هذا الوقتألعراض خطيرة، وانتهى بى الحال في مستشفى لعالج اإلدمان تحت حراسة مشددة، وبعد المرور بهذه األعراض،ومساعدة االطباء لي في هذه المرحلة، وجدت ان وجودى بين حوائط السجن هو األصلح لي حتى أكون بعيدا عن الموادالمخدرة، وحتى ال استطيع الحصول على الهيروين مرة اخرى.وقد ساهم وجودى في المعتقل في حجبي عن المخدرات لفترة طويلة، جعلتني أتعرف على الكثير من النشاطات التيحادت بي عن طريق اإلدمان، واوصلني الى الطريق الصحيح، وأصبح لدي أمل كبير في ان اكون قادرا على تغييرحياتي بعد الخروج من السجن"),
    Story(
        title: 'صحبة السوء',
        body:
            "قصة شاب آخر وقع فى حفرة اإلدمان المظلمة ولم يستطع الخروج منها إال بعد فوات األوان، يحكى الشاب قصته معاإلدمان فيقول بدأت رحلة التعاطي من عمر 15 سنة، أي في سن المراهقة، كنت العبا محترفا لكرة القدم، وفي إحدىجوالت الكرة في أحد الشوارع تعرفت على شاب أقنعني باالنضمام إلى فريقه المتواضع، وهنا بدأت القصة وذلك عندماكان الفريق يقيم حفالت صاخبة عند تحقيق االنتصار، ومن خالل هذه الحفالت تعرفت على عالم المسكرات والمخدرات،وفي خالل 6 سنوات انجرفت الى حفرة اإلدمان بشكل تدريجي في تجريب وتعاطيت الكثير من المخدرات حتى أصبحت مدمناً.وتغيرت حياة ذلك الشاب عندما اكتشفت عائلته أمر إدمانه، وتوجهت به األسرة إلى مستشفى االمل لعالج االدمان،واستمرت فترة معالجته قرابة عام، وما زل يتلقى العالج التكميلى عقب خروجة من مستشفى عالج اإلدمان...ال تيأس...بعد التعرف على قصص هؤالء الشباب المدمنين، الذين قضوا فترة كبيرة من حياتهم يعانون من هذا المرض اللعين،يجب ان نتعلم انه دائما يكون هناك أمل في العالج من اإلدمان، حيث يقدم فريق عمل مستشفى األمل العديد من الخدماتالطبية التى تعمل على توفير العالج الجسدي والنفسي للمدمنين على كافة المواد المخدرة.. فال تفقد األمل وتذكر أنك لست وحدك"),
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
                  Navigator.of(context).pushNamed(
                    LibraryDetailsScreen.routeName,
                  );
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
