import 'package:flutter_test/flutter_test.dart';
import 'package:testing/validation.dart';

void main() {
  group('Email Validation', () {
    test('empty email test', () {
      String email = Validation.emailValidation('');
      expect(email, 'Please Enter Valid Email');
    });

    test('valid email test should return empty string', () {
      String email = Validation.emailValidation('test@gmail.com');
      expect(email, '');
    });

    test('Email without @ symbol should return error message', () {
      String email = Validation.emailValidation('testexample.com');
      expect(email, 'Please Enter Valid Email');
    });

    test('Email without domain should return error message', () {
      String email = Validation.emailValidation('test@');
      expect(email, 'Please Enter Valid Email');
    });

    test('Email without username should return error message', () {
      String email = Validation.emailValidation('@example.com');
      expect(email, 'Please Enter Valid Email');
    });

    test('Email with multiple @ symbols should return error message', () {
      String email = Validation.emailValidation('test@example@domain.com');
      expect(email, 'Please Enter Valid Email');
    });

    test('Email with invalid characters should return error message', () {
      String email = Validation.emailValidation('test!@example.com');
      expect(email, 'Please Enter Valid Email');
    });
  });

  group('Password Validation', () {

    test('Password with minimum length should return error message', () {
      String password = Validation.passWordValidation('Abc125');
      expect(password, 'Password must be at least 8 characters long.');
    });

    test('Password without uppercase letter should return error message', () {
      String password = Validation.passWordValidation('abc12345!');
      expect(password, 'Password must contain at least one uppercase letter.');
    });

    test('Password without lowercase letter should return error message', () {
      String password = Validation.passWordValidation('ABC12345!');
      expect(password, 'Password must contain at least one lowercase letter.');
    });

    test('Password without number should return error message', () {
      String password = Validation.passWordValidation('Abcdefgh!');
      expect(password, 'Password must contain at least one digit.');
    });

    test('Password without special character should return error message', () {
      String password = Validation.passWordValidation('Abc12345');
      expect(password, 'Password must contain at least one special character.');
    });
  });
}