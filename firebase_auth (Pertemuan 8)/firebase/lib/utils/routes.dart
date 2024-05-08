import 'package:flutter/material.dart';
import 'package:firebase/ui/home_screen.dart';
import 'package:firebase/ui/login.dart';
import 'package:firebase/ui/register.dart';

// Fungsi untuk membuat MaterialPageRoute sesuai dengan body dan settings yang diberikan
MaterialPageRoute _pageRoute(
        {required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);

// Fungsi untuk menangani pembuatan rute berdasarkan RouteSettings
Route? generateRoute(RouteSettings settings) {
  Route? _route;
  final _args = settings.arguments;
  switch (settings.name) {
    case rLogin:
      _route = _pageRoute(body: LoginScreen(), settings: settings);
      break;
    case rRegister:
      _route = _pageRoute(body: RegisterScreen(), settings: settings);
      break;
    case rHome:
      _route = _pageRoute(body: HomeScreen(), settings: settings);
      break;
  }
  return _route;
}

// Kunci global untuk NavigatorState
final NAV_KEY = GlobalKey<NavigatorState>();

// Daftar rute yang digunakan dalam aplikasi
const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
