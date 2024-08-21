import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/app/base/base_page.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../components/inputs/text_input_field.dart';
import '../../navigation/app_router.gr.dart';
import 'bloc/login_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage, LoginBloc> {
  @override
  LoginBloc setBloc() => LoginBloc();

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return ReactiveForm(
              formGroup: context.read<LoginBloc>().formGroup,
              child: ListView(
                children: [
                  SizedBox(height: context.width * .12),
                  const Text(
                    'Welcome,',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: context.width * .01),
                  Text(
                    'Sign in to continue!',
                    style: TextStyle(
                      fontSize: 18,
                      color: context.colorScheme.primary.withOpacity(.6),
                    ),
                  ),
                  SizedBox(height: context.width * .12),
                  const TextInputField(
                    formControlName: 'email',
                    labelText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    autoFocus: true,
                  ),
                  SizedBox(height: context.width * .025),
                  TextInputField(
                    formControlName: 'password',
                    onSubmitted: (val) {},
                    labelText: 'Password',
                    obscureText: state.isObscure,
                    textInputAction: TextInputAction.next,
                    suffixIcon: IconButton(
                      onPressed: () {
                        bloc.add(const LoginEvent.togglePasswordVisibility());
                      },
                      icon: state.isObscure
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.width * .075,
                  ),
                  ReactiveFormConsumer(
                    builder: (context, form, child) => ElevatedButton(
                      onPressed: form.valid
                          ? () => bloc.add(const LoginEvent.submit())
                          : null,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: context.height * .02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child:
                          Text('Log In', style: context.textTheme.titleMedium),
                    ),
                  ),
                  SizedBox(
                    height: context.width * .15,
                  ),
                  TextButton(
                    onPressed: () => context.router.push(const RegisterRoute()),
                    child: RichText(
                      text: TextSpan(
                        text: "I'm a new user, ",
                        style: context.textTheme.bodyMedium,
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: context.textTheme.titleMedium!.copyWith(
                              color: context.colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
