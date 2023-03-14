import 'package:flutter/material.dart';

import '../../login_navigator.dart';
import 'registration_interactor.dart';
import 'registration_ui.dart';

class RegisterPage extends StatelessWidget {
  final String? phoneNumber;

  const RegisterPage(this.phoneNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegistrationBody(phoneNumber);
  }
}

class RegistrationBody extends StatefulWidget {
  final String? phoneNumber;

  const RegistrationBody(this.phoneNumber, {Key? key}) : super(key: key);

  @override
  RegistrationBodyState createState() => RegistrationBodyState();
}

class RegistrationBodyState extends State<RegistrationBody>
    implements RegistrationInteractor {
  @override
  Widget build(BuildContext context) {
    return RegistrationUI(this, widget.phoneNumber);
  }

  @override
  void register(String name, String email) {
    Navigator.pushNamed(context, LoginRoutes.verification);
  }
}
