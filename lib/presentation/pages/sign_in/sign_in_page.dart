import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'package:wine/application/database/sign_in/sign_in_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/account/widgets/create_account_button.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_form.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/error_dialog.dart';
import 'package:wine/presentation/widgets/image_back_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/utils/themes.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(41.5),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(
                color: Colors.black,
                height: 2.0,
              ),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
              child: ImageBackButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.of(context).pop();
                },
                color: Palettes.darkCobaltBlue,
              ),
            ),
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<SignInAuthenticationBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<SignInAuthenticationBloc>(),
            ),
          ],
          child: SignInForm(),
        )
      ),
    );
  }
}

// class SignInPage extends StatefulWidget {
//   @override
//   _SignInPageState createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> with TickerProviderStateMixin {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   void initState() {
//     _emailController.addListener(_onEmailChanged);
//     _passwordController.addListener(_onPasswordChanged);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   void _onEmailChanged() => context
//       .bloc<SignInAuthenticationBloc>()
//       .add(EmailChanged(_emailController.text));

//   void _onPasswordChanged() => context
//       .bloc<SignInAuthenticationBloc>()
//       .add(PasswordChanged(_passwordController.text));

//   void _backButtonPressed() {
//     FocusScope.of(context).requestFocus(FocusNode());
//     Navigator.of(context).pop();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: Themes.wineLightTheme(),
//       child: Scaffold(
//         backgroundColor: Colors.white,
// appBar: PreferredSize(
//   preferredSize: const Size.fromHeight(41.5),
//   child: AppBar(
//     backgroundColor: Colors.transparent,
//     bottom: PreferredSize(
//       preferredSize: const Size.fromHeight(0.0),
//       child: Container(
//         color: Colors.black,
//         height: 2.0,
//       ),
//     ),
//     brightness: Brightness.light,
//     centerTitle: true,
//     elevation: 0.0,
//     leading: Padding(
//       padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
//       child: ImageBackButton(
//         onPressed: _backButtonPressed,
//         color: Palettes.darkCobaltBlue,
//       ),
//     ),
//   ),
// ),
//         body: MultiBlocProvider(
//           providers: [
//             BlocProvider(
//               create: (context) => getIt<SignInAuthenticationBloc>(),
//             ),
//             BlocProvider(
//               create: (context) => getIt<SignInDatabaseBloc>(),
//             ),
//           ],
//           child: SignInForm(),
//         ) MultiBlocListener(
//           listeners: [
//             BlocListener<SignInAuthenticationBloc, SignInAuthenticationState>(
//               listener: (context, state) {
//                 state.authFailureOrSuccessOption.fold(
//                   () {},
//                   (some) => some.fold(
//                     (failure) {
//                       failure.map(
//                         cancelledByUser: (_) {},
//                         serverError: (_) => customShowDialog(
//                           context: context,
//                           builder: (_) => ErrorDialog(
//                             message: 'An unexpected error occured!',
//                             onPressed: () => Navigator.of(context).pop(true),
//                           ),
//                         ),
//                         emailAlreadyInUse: (_) {},
//                         invalidEmailAndPasswordCombination: (_) =>
//                             customShowDialog(
//                           context: context,
//                           builder: (_) => ErrorDialog(
//                             message: 'Incorrect email or password.',
//                             onPressed: () => Navigator.of(context).pop(true),
//                           ),
//                         ),
//                         usernameAlreadyInUse: (_) {},
//                         unableToSignOut: (_) {},
//                       );
//                     },
//                     (right) {
//                       if (right is User) {
//                         context.bloc<SignInDatabaseBloc>().add(SignedIn(right));
//                       }
//                     },
//                   ),
//                 );
//               },
//             ),
//             BlocListener<SignInDatabaseBloc, SignInDatabaseState>(
//               listener: (context, state) {
//                 state.databaseFailureOrSuccessOption.fold(
//                   () {},
//                   (some) => some.fold(
//                     (failure) => customShowDialog(
//                       context: context,
//                       builder: (_) => ErrorDialog(
//                         message: 'An unexpected error occured!',
//                         onPressed: () => Navigator.of(context).pop(true),
//                       ),
//                     ),
//                     (_) {
//                       sailor.navigate(
//                         Constants.homeRoute,
//                         navigationType: NavigationType.pushAndRemoveUntil,
//                         removeUntilPredicate: (_) => false,
//                       );
//                       context
//                           .bloc<CoreAuthenticationBloc>()
//                           .add(const PageLaunched());
//                       context
//                           .bloc<HomeNavigationBloc>()
//                           .add(const ResetHomeNavigationBloc());
//                     },
//                   ),
//                 );
//               },
//             ),
//           ],
//           child:
//               BlocBuilder<SignInAuthenticationBloc, SignInAuthenticationState>(
//             builder: (context, authenticationState) {
//               return BlocBuilder<SignInDatabaseBloc, SignInDatabaseState>(
//                 builder: (context, databaseState) {
//                   return SafeArea(
//                     child: Stack(
//                       children: <Widget>[
//                         Form(
//                           child: Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 20.0),
//                             child: ScrollConfiguration(
//                               behavior: const ScrollBehavior(),
//                               child: ListView(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         bottom: 25.0, top: 150.0),
//                                     child: Container(
//                                       width: MediaQuery.of(context).size.width,
//                                       child: Text(
//                                         'Log in to access more features.',
//                                         textAlign: TextAlign.start,
//                                         style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 20.0,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(bottom: 20.0),
//                                     child: TextFormField(
//                                       controller: _emailController,
//                                       cursorColor: Palettes.strongCyan,
//                                       keyboardType: TextInputType.emailAddress,
//                                       decoration: InputDecoration(
//                                         hintText: 'Email address',
//                                         labelText: 'Email address',
//                                         labelStyle: TextStyle(
//                                           color: Palettes.strongCyan,
//                                         ),
//                                         prefixIcon: Icon(
//                                           Feather.mail,
//                                           color: Palettes.strongCyan,
//                                         ),
//                                         border: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             width: 2.0,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                         enabledBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             width: 2.0,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                         focusedBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             width: 2.0,
//                                             color: Palettes.strongCyan,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(bottom: 25.0),
//                                     child: TextFormField(
//                                       controller: _passwordController,
//                                       cursorColor: Palettes.strongCyan,
//                                       decoration: InputDecoration(
//                                         hintText: 'Password',
//                                         labelText: 'Password',
//                                         labelStyle: TextStyle(
//                                           color: Palettes.strongCyan,
//                                         ),
//                                         prefixIcon: Icon(
//                                           Feather.lock,
//                                           color: Palettes.strongCyan,
//                                         ),
//                                         border: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             width: 2.0,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                         enabledBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             width: 2.0,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                         focusedBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                             width: 2.0,
//                                             color: Palettes.strongCyan,
//                                           ),
//                                         ),
//                                       ),
//                                       obscureText: true,
//                                     ),
//                                   ),
//                                   Visibility(
//                                     visible:
//                                         authenticationState.showErrorMessages,
//                                     child: Padding(
//                                       padding:
//                                           const EdgeInsets.only(bottom: 20.0),
//                                       child: Text(
//                                         'The email address or password you entered is incorrect.',
//                                         style: TextStyle(
//                                           color: Palettes.error,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(bottom: 40.0),
//                                     child: Container(
//                                       height: 50.0,
//                                       child: FlatButton(
//                                         color: Palettes.strongCyan,
//                                         onPressed: () => context
//                                             .bloc<SignInAuthenticationBloc>()
//                                             .add(
//                                               const SignInWithEmailAndPasswordPressed(),
//                                             ),
//                                         child: Text(
//                                           'LOG IN',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20.0,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(bottom: 30.0),
//                                     child: GestureDetector(
//                                       onTap: () {},
//                                       child: Text(
//                                         'Forgot password?',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 15.0,
//                                           fontWeight: FontWeight.w400,
//                                           letterSpacing: 0.5,
//                                           decoration: TextDecoration.underline,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(bottom: 30.0),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: <Widget>[
//                                         Container(
//                                           color: Colors.black26,
//                                           height: 1.0,
//                                           width: 100.0,
//                                         ),
//                                         Text(
//                                           'OR LOG IN WITH',
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.w300,
//                                           ),
//                                         ),
//                                         Container(
//                                           color: Colors.black26,
//                                           height: 1.0,
//                                           width: 100.0,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(bottom: 50.0),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: <Widget>[
//                                         FlatButton(
//                                           onPressed: () => context
//                                               .bloc<SignInAuthenticationBloc>()
//                                               .add(
//                                                 const SignInWithGooglePressed(),
//                                               ),
//                                           padding: const EdgeInsets.all(10.0),
//                                           shape: const CircleBorder(
//                                             side: BorderSide(width: 2.0),
//                                           ),
//                                           child: Icon(
//                                             FontAwesome.google,
//                                             color: Palettes.darkCyanBlue,
//                                             size: 30.0,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(bottom: 20.0),
//                                     child: CreateAccountButton(
//                                       onPressed: () =>
//                                           sailor(Constants.createAccountRoute),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.bottomCenter,
//                           child: AnimatedSize(
//                             duration: const Duration(milliseconds: 200),
//                             vsync: this,
//                             child: Container(
//                               color: Colors.white,
//                               width: MediaQuery.of(context).size.width,
//                               height: authenticationState.isSubmitting ||
//                                       databaseState.isUpdating
//                                   ? MediaQuery.of(context).size.height
//                                   : 0.0,
//                               child: Center(
//                                 child: CircularProgressIndicator(
//                                   valueColor: AlwaysStoppedAnimation<Color>(
//                                     Palettes.darkCyanBlue,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
