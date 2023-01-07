import 'package:drug_app/models/constants.dart';
import 'package:drug_app/models/doctor.dart';
import 'package:drug_app/screens/doctor_details_screen.dart';
import 'package:flutter/material.dart';

class Taafi extends StatelessWidget {
  static const routeName = '/taafi';
  List<Doctor> dummydata = [
    Doctor(
        name: 'د/محمد احمد الرضي',
        age: 32,
        clinicalPlace: 'نيالا',
        phoneNumber: 01136161781,
        description: 'خريج كلية الطب والعلوم الصحية جامعة الخرطوم'),
    Doctor(
        name: 'د/غالب محمد غالب',
        age: 44,
        clinicalPlace: 'الخرطوم',
        phoneNumber: 01136161781,
        description: 'خريج كلية الطب والعلوم الصحية جامعة الخرطوم'),
    Doctor(
        name: 'د/عبدالله احمد محمد',
        age: 57,
        clinicalPlace: 'بحري',
        phoneNumber: 01136161781,
        description: 'خريج كلية الطب والعلوم الصحية جامعة الخرطوم'),
    Doctor(
        name: 'د/عاشور احمد ضوينا',
        age: 87,
        clinicalPlace: 'ام درمان',
        phoneNumber: 01136161781,
        description: 'خريج كلية الطب والعلوم الصحية جامعة الخرطوم'),
    Doctor(
        name: 'د/ادم احمد ستار',
        age: 53,
        clinicalPlace: 'الابيض',
        phoneNumber: 01136161781,
        description: 'خريج كلية الطب والعلوم الصحية جامعة الخرطوم'),
    Doctor(
        name: 'د/باسل احمد غالب',
        age: 64,
        clinicalPlace: 'مدني',
        phoneNumber: 01136161781,
        description: 'خريج كلية الطب والعلوم الصحية جامعة الخرطوم')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        title: const Text('التعافي', style: kXLargeTittle),
      ),
      //drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: dummydata.length,
            itemBuilder: (ctx, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DoctorDetailsScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                    elevation: 5.0,
                    child: Row(
                      children: [
                        FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            height: 200,
                            width: 200,
                            //doctor image
                            child: const Icon(
                              Icons.account_circle_outlined,
                              size: 100,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dummydata[index].name,
                                    overflow: TextOverflow.ellipsis,
                                    style: kLargeTittle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'العمر ${dummydata[index].age}',
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    dummydata[index].description,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.place_outlined,
                                        color: Colors.teal,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        dummydata[index].clinicalPlace,
                                        overflow: TextOverflow.ellipsis,
                                        style: kSmallTittle,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.phone_in_talk,
                                        color: Colors.teal,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        dummydata[index].phoneNumber.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: kSmallTittle,
                                      ),
                                    ],
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
            },
          ),
        ),
      ),
    );
  }
}
