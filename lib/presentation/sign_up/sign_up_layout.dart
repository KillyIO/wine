import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';

/// @nodoc
class SignUpLayout extends StatelessWidget {
  /// @nodoc
  const SignUpLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: <BlocListener>[
        BlocListener<SignUpBloc, SignUpState>(
          listener: (context, state) {
            // TODO: implement listener
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            // TODO: implement listener
          },
        ),
      ],
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return SafeArea(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // SECTION e-mail address
                    const TextFieldLabel(title: 'EMAIL ADDRESS*'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
