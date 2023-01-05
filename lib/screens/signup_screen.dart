import 'package:flutter/material.dart';

import '../models/constants.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/sign_up';

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _placeController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        elevation: 0,
        title: const Text('الحساب ', style: kXLargeTittle),
      ),
      // drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'انشاء حساب جديد !',
                style: kXLargeTittle,
              ),
              const SizedBox(
                height: 20,
              ),
              _mainForm(context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Form _mainForm(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: <Widget>[
          //name
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return 'مطلوب *';
              } else if (val!.length < 8) {
                return 'يجب ان يكون الاسم اكثر من 8 حرف *';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'اسم المستخدم',
              hintText: 'ادخل اسم المستخدم',
            ),
            controller: _nameController,
          ),
          const SizedBox(height: 10),
          //place
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return 'مطلوب *';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'السكن',
              hintText: 'السكن',
            ),
            controller: _placeController,
          ),
          const SizedBox(height: 10),
          //phone
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return 'مطلوب *';
              } else if (val!.length < 10) {
                return "يجب ان يتكون رقم الهاتف من 10 ارقام ";
              } else if (!isValidPhone(val)) {
                return "الرجاء ادخال رقم هاتف صحيح";
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "رقم الهاتف",
              hintText: "ادخل رقم الهاتف",
            ),
            controller: _phoneController,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          //password
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return 'مطلوب *';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'كلمة المرور',
              hintText: 'ادخل كلمة المرور',
            ),
            controller: _passwordController,
          ),
          const SizedBox(height: 10),
          //confirm password
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return 'مطلوب *';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'تأكيد كلمة المرور',
              hintText: 'اعد كلمة المرور',
            ),
            controller: _confirmPasswordController,
          ),
          const SizedBox(height: 10),
          MaterialButton(
            onPressed: () {
              // if (_key.currentState != null && _key.currentState!.validate()) {
              //   context
              //       .read<ItemProvider>()
              //       .addFound(
              //         LostItem(
              //           id: '',
              //           name: _nameController.text,
              //           type: _typeController.text,
              //           place: _placeController.text,
              //           phoneNumber: int.parse(_phoneController.text),
              //           description: _descriptionController.text,
              //           date: _selectedDate,
              //         ),
              //       )
              //       .then((value) => ScaffoldMessenger.of(context).showSnackBar(
              //           SnackBar(
              //               content: Text(
              //                   translation(context).itemAddedSuccessfully))));
              //   Navigator.of(context).pop();
              // }
            },
            height: 50,
            shape: const StadiumBorder(),
            color: Theme.of(context).colorScheme.secondary,
            child: const Center(
              child: Text(
                'انشاء',
                style: kButtonTheme,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isValidName(value) {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(value);
  }

  bool isValidPhone(value) {
    final nameRegExp = RegExp(r"[0-9]");
    return nameRegExp.hasMatch(value);
  }
}
