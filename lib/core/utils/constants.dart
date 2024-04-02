import 'package:codonnier_login/exporter.dart';
import 'package:flutter/material.dart';

enum FieldKeys {
  userName('userName'),
  name('name'),
  fullName('fullName'),
  full_name('full_name'),
  firstName('firstName'),
  first_name('first_name'),
  lastName('lastName'),
  last_name('last_name'),
  email('email'),
  emailAddress('emailAddress'),
  email_address('email_address'),
  countryCode('countryCode'),
  country_code('country_code'),
  phone('phone'),
  phoneNumber('phoneNumber'),
  phone_number('phone_number'),
  number('number'),
  password('password');

  const FieldKeys(this.fieldName);

  final String fieldName;
}

typedef ResponseHandler = void Function(
    BuildContext context, CodonnierLoginState state);

typedef CodonnierLoginStateLoaded<T> = void Function(
    BuildContext context, T data);

typedef CodonnierLoginStateError = void Function(
    BuildContext context, String? errorMessage);
