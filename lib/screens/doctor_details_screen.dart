import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/constants.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  var _selectedDate;
  var _selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        elevation: 0,
        title: const Text('د/ مجدي حبيب يعقوب', style: kXLargeTittle),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 600,
          child: Stack(
            children: [
              const Positioned(
                left: 0,
                right: 0,
                child: SizedBox(
                  width: double.infinity,
                  height: 140,
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 80,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 140 - 10,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.place,
                                  color: Colors.black87,
                                ),
                                SizedBox(width: 5.0),
                                Text('الخرطوم', style: kSmallTittle),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.phone_in_talk,
                                  color: Colors.black87,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '01112133433',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.black87,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '8-12 AM - 7-10 PM',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'الدكتور / مجدي حبيب يعقوب',
                          style: kXLargeTittle,
                        ),
                        const Text(
                          'استشاري',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "مجدي حبيب يعقوب (مواليد 16 نوفمبر 1935) هو بروفيسور مصري، وجراح قلب بارز. من مواليد مدينة بلبيس، محافظة الشرقية، مصر، لعائلة قبطية أرثوذكسية، وتنحدر أصولها من المنيا. درس الطب في جامعة القاهرة، وتعلم في شيكاغو، ثم انتقل إلى بريطانيا في عام 1962 ليعمل في مستشفى الصدر بلندن، ثم أصبح أخصائي جراحات القلب والرئتين في مستشفى هارفيلد .",
                          style: kDetailsText,
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 100,
                            child: MaterialButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        actionsAlignment:
                                            MainAxisAlignment.center,
                                        title: const Text(
                                          'حجز موعد',
                                          style: kXLargeTittle,
                                        ),
                                        content: SizedBox(
                                          height: 200,
                                          width: 150,
                                          //color: Colors.blue,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    const Text(
                                                      'اليوم :',
                                                      style: kLargeTittle,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    SizedBox(
                                                      height: 40,
                                                      width: 150,
                                                      child: TextFormField(
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          hintText:
                                                              'اختر التاريخ',
                                                        ),
                                                        initialValue:
                                                            _selectedDate ==
                                                                    null
                                                                ? ''
                                                                : DateFormat
                                                                        .yMd()
                                                                    .format(
                                                                        _selectedDate),
                                                        onTap: () async {
                                                          FocusScope.of(context)
                                                              .requestFocus(
                                                                  FocusNode());
                                                          await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                DateTime.now(),
                                                            firstDate: DateTime(
                                                                DateTime.now()
                                                                    .year),
                                                            lastDate: DateTime(
                                                                DateTime.now()
                                                                        .year +
                                                                    20),
                                                            confirmText:
                                                                _selectedDate,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    const Text('الزمن :',
                                                        style: kLargeTittle),
                                                    SizedBox(width: 10),
                                                    SizedBox(
                                                      height: 40,
                                                      width: 150,
                                                      child: TextFormField(
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          hintText:
                                                              'اختر الزمن',
                                                        ),
                                                        initialValue:
                                                            _selectedTime ==
                                                                    null
                                                                ? ''
                                                                : DateFormat
                                                                    .HOUR,
                                                        onTap: () async {
                                                          FocusScope.of(context)
                                                              .requestFocus(
                                                                  FocusNode());
                                                          await showTimePicker(
                                                              context: context,
                                                              initialTime:
                                                                  TimeOfDay
                                                                      .now());
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: const [
                                                    Text('نوع الحجز :',
                                                        style: kLargeTittle),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text('مباشر'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        actions: [
                                          SizedBox(
                                            height: 40,
                                            width: 100,
                                            child: MaterialButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        actionsAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        content: SizedBox(
                                                          height: 200,
                                                          width: 150,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  height: 100,
                                                                  width: 100,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .secondary,
                                                                    child:
                                                                        const Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 100,
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 10,
                                                                ),
                                                                const Text(
                                                                  'تم الحجز بنجاح',
                                                                  style:
                                                                      kLargeTittle,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        actions: [
                                                          SizedBox(
                                                            height: 40,
                                                            width: 60,
                                                            child:
                                                                MaterialButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              shape:
                                                                  const StadiumBorder(),
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary,
                                                              child:
                                                                  const Center(
                                                                child: Text(
                                                                  'OK',
                                                                  style:
                                                                      kButtonTheme,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    });
                                              },
                                              shape: const StadiumBorder(),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                              child: const Center(
                                                child: Text(
                                                  'تأكيد',
                                                  style: kButtonTheme,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              shape: const StadiumBorder(),
                              color: Theme.of(context).colorScheme.secondary,
                              child: const Center(
                                child: Text(
                                  'حجز',
                                  style: kButtonTheme,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
