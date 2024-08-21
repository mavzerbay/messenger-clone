import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../components/inputs/text_input_field.dart';
import 'bloc/register_bloc.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        body: Scrollbar(
          thumbVisibility: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<RegisterBloc, RegisterState>(
              builder: (context, state) {
                return ReactiveForm(
                  formGroup: context.read<RegisterBloc>().formGroup,
                  child: ListView(
                    children: [
                      SizedBox(height: context.height * .12),
                      const Text(
                        'Create Account,',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: context.height * .01),
                      Text(
                        'Sign up to get started!',
                        style: TextStyle(
                          fontSize: 18,
                          color: context.colorScheme.primary.withOpacity(.6),
                        ),
                      ),
                      SizedBox(height: context.height * .12),
                      const TextInputField(
                        formControlName: 'firstName',
                        labelText: 'First Name',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autoFocus: true,
                      ),
                      SizedBox(height: context.height * .025),
                      const TextInputField(
                        formControlName: 'lastName',
                        labelText: 'Last Name',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autoFocus: true,
                      ),
                      SizedBox(height: context.height * .025),
                      const TextInputField(
                        formControlName: 'email',
                        labelText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autoFocus: true,
                      ),
                      SizedBox(height: context.height * .025),
                      TextInputField(
                        formControlName: 'password',
                        onChanged: (value) {},
                        labelText: 'Password',
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(height: context.height * .025),
                      TextInputField(
                        formControlName: 'confirmPassword',
                        onSubmitted: (value) {},
                        labelText: 'Confirm Password',
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(
                        height: context.height * .075,
                      ),
                      ReactiveFormConsumer(
                        builder: (context, form, child) => ElevatedButton(
                          onPressed: form.valid ? () {} : null,
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: context.height * .02),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text('Sign Up',
                              style: context.textTheme.titleMedium),
                        ),
                      ),
                      SizedBox(
                        height: context.height * .125,
                      ),
                      TextButton(
                        onPressed: () => context.router.maybePop(),
                        child: RichText(
                          text: TextSpan(
                            text: "I'm already a member, ",
                            style: context.textTheme.bodyMedium,
                            children: [
                              TextSpan(
                                text: 'Sign In',
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
        ),
      ),
    );
  }
}
