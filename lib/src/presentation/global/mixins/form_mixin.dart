import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:species/src/presentation/views/login/login_page.dart';

mixin FormMixing on State<LoginPage>{
  TextInputFormatter withoutSpaces =
      FilteringTextInputFormatter.deny(RegExp(r'[\s\n]'));
  String? passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Ingrese su contraseña';
    }
    if (value.length < 8) {
      return 'Ingrese al menos 8 caracteres';
    }
    if (!RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$")
        .hasMatch(value)) {
      return 'Ingrese al menos un número y una letra mayúscula';
    }
    if (!RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])[^\W_]{8,}$")
        .hasMatch(value)) {
      return 'No se permiten caractéres especiales';
    }
    return null;
  }

  String? emailValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Ingrese su email';
    }
    if (!RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
    ).hasMatch(value)) {
      return 'Ingrese un email válido';
    }
    return null;
  }
}
