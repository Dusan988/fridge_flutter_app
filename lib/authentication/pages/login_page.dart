import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:fridge_tracker/authentication/blocs/auth_cubit.dart';
import 'package:fridge_tracker/authentication/blocs/auth_state.dart';
import 'package:fridge_tracker/core/blocs/connectivity_cubit.dart';
import 'package:fridge_tracker/core/blocs/permission_cubit.dart';
import 'package:fridge_tracker/core/widgets/fridge_app_bar.dart';
import 'package:fridge_tracker/core/widgets/offline_dialog.dart';

@RoutePage<void>()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLogin = true;
  final formKey = GlobalKey<FormState>();
  late final PermissionCubit _permissionCubit;

  @override
  void initState() {
    super.initState();
    _permissionCubit = context.read<PermissionCubit>();
    _permissionCubit.requestGalleryPermission();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    final authCubit = context.read<AuthCubit>();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (_isLogin) {
      context.read<ConnectivityCubit>().state.when(
        offline: () => offlineDialog(context),
        online: () {
          if (formKey.currentState?.validate() ?? false) {
            formKey.currentState?.save();
            authCubit.signIn(email: email, password: password);
          }
        },
      );
    } else {
      context.read<ConnectivityCubit>().state.when(
        offline: () => offlineDialog(context),
        online: () {
          if (formKey.currentState?.validate() ?? false) {
            formKey.currentState?.save();
            authCubit.signUp(email: email, password: password);
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _permissionCubit,
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            error: (s) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.redAccent,
                  content: Text(s.error),
                ),
              );
            },
            signedUp: (s) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('Account created successfully!'),
                ),
              );
            },
            signedIn: (s) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('Successfully logged in!'),
                ),
              );
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: FridgeAppBar(
            backgroundColor: Colors.green,
            titleWidget: _isLogin
                ? Center(child: Text('Login'))
                : Center(child: Text('Sign Up')),
            showBackButton: false,
          ),
          body: BlocListener<ConnectivityCubit, ConnectivityState>(
            listenWhen: (oldState, currentState) {
              return oldState.isOnline != currentState.isOnline;
            },
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                offline: (_) => offlineDialog(context),
              );
            },
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 80.h, left: 18.w, right: 22.w),
                child: Form(
                  key: formKey,
                  child: ListView(
                    children: [
                      Text(
                        'Welcome!',
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.h),
                      const Text(
                        'Please enter your details to continue.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 32.h),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: MultiValidator(<FieldValidator<dynamic>>[
                          RequiredValidator(errorText: 'Email is required'),
                        ]).call,
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        controller: _passwordController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                        obscureText: true,

                        validator: MultiValidator(<FieldValidator<dynamic>>[
                          RequiredValidator(errorText: 'Password is required'),
                        ]).call,
                      ),

                      SizedBox(height: 24.h),
                      BlocBuilder<AuthCubit, AuthState>(
                        builder: (context, state) {
                          return ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll<Color>(
                                Colors.lightGreenAccent,
                              ),
                            ),
                            onPressed: _submitForm,
                            child: state.maybeMap(
                              loading: (_) => CircularProgressIndicator(
                                color: Colors.black54,
                              ),
                              orElse: () =>
                                  Text(_isLogin ? 'Sign In' : 'Sign Up'),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 16.h),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll<Color>(
                            Colors.lightGreen,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        },
                        child: Text(
                          _isLogin
                              ? 'Need an account? Sign Up'
                              : 'Already have an account? Sign In',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
