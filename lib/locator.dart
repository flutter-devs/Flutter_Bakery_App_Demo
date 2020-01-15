import 'package:cookies_app/View_Model/cart_view_model.dart';
import 'package:cookies_app/View_Model/cookie_cake_view_model.dart';
import 'package:cookies_app/View_Model/cookie_detail_view_model.dart';
import 'package:cookies_app/View_Model/cookie_icecream_view_model.dart';
import 'package:cookies_app/View_Model/cookie_page_view_model.dart';
import 'package:cookies_app/View_Model/home_view_model.dart';
import 'package:cookies_app/View_Model/login_view_model.dart';
import 'package:cookies_app/View_Model/profile_view_model.dart';
import 'package:cookies_app/View_Model/search_view_model.dart';
import 'package:cookies_app/View_Model/signup_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setLocator(){

/*
  locator.registerLazySingleton(() => UserRegistrationViewModel());
*/
  locator.registerLazySingleton(() => UserLoginViewModel());
  locator.registerLazySingleton(() => HomeViewModel());
  locator.registerLazySingleton(() => ProfileViewModel());
  locator.registerLazySingleton(() => CookieCakeViewModel());
  locator.registerLazySingleton(() => CookieDetailViewModel());
  locator.registerLazySingleton(() => CookieIceCreamViewModel());
  locator.registerLazySingleton(() => CookiePageViewModel());
  locator.registerLazySingleton(() => SearchViewModel());
  locator.registerLazySingleton(() => CartViewModel());
  locator.registerLazySingleton(() => SignUpViewModel());









}