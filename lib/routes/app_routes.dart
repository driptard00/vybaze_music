import 'package:get/get.dart';
import 'package:vybaze_music/auth/forgotpassword.dart';
import 'package:vybaze_music/auth/registerpage.dart';
import 'package:vybaze_music/auth/resetpasswordpage.dart';
import 'package:vybaze_music/auth/resetpasswordverifiaction.dart';
import 'package:vybaze_music/auth/verificationpage.dart';
import 'package:vybaze_music/routes/app_route_names.dart';
import 'package:vybaze_music/screens/artistpick.dart';
import 'package:vybaze_music/screens/firstpage.dart';
import 'package:vybaze_music/screens/mainscreen.dart';
import 'package:vybaze_music/screens/premiumpayment.dart';
import 'package:vybaze_music/screens/premiumplan.dart';
import 'package:vybaze_music/screens/settings.dart';
import 'package:vybaze_music/screens/terms&privacy.dart';

import '../auth/loginpage.dart';
import '../widgets/splash_screen.dart';

List<GetPage> getPages = [
  GetPage(name: splash_creen, page: ()=> SplashScreen()),
  GetPage(name: loginscreen, page: ()=> LoginPage(), transition: Transition.downToUp,),
  GetPage(name: registerscreen, page: ()=> RegPage(), transition: Transition.downToUp,),
  GetPage(name: resetpasswordverification, page: ()=> ResetPasswordVerification(), transition: Transition.downToUp, ),
  GetPage(name: forgotpasswordscreen, page: ()=> ForgotPassword(), transition: Transition.downToUp, ),
  GetPage(name: emailverification, page: ()=> EmailVerification(), transition: Transition.downToUp, ),
  GetPage(name: resetpassword, page: ()=> ResetPassword(), transition: Transition.downToUp, ),
  // GetPage(name: usernamescreen, page: ()=> UserName(), transition: Transition.downToUp,),
  GetPage(name: mainscreen, page: ()=> MainScreen(), transition: Transition.downToUp,),
  GetPage(name: termsscreen, page: ()=> TermsAndPrivacy(), transition: Transition.downToUp,),
  GetPage(name: settingsreen, page: ()=> SettingsPage(), transition: Transition.downToUp,),
  // GetPage(name: profilescreen, page: ()=> Profile(), transition: Transition.downToUp,),
  // GetPage(name: editprofilescreen, page: ()=> EditProfile(), transition: Transition.downToUp),
  // GetPage(name: musicdetailscreen, page: ()=> MusicPage(), transition: Transition.downToUp),
  GetPage(name: firstscreen, page: ()=> FirstPage(),),
  GetPage(name: premiumplanscreen, page: ()=> PremiumPlanScreen(),),
  GetPage(name: premiumppaymentscreen, page: ()=> PremiumPayment(),),
  GetPage(name: artistpickscreen, page: ()=> ArtistPickPage(),),
];