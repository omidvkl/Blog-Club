import 'package:blogclub_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static const int loginTab = 0;
  static const int signUpTab = 1;
  int selectedTextIndex = loginTab;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final tabTextStyle = TextStyle(
      color: themeData.colorScheme.onPrimary,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32, top: 32),
              child: Assets.img.icons.logo.svg(width: 120),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32)),
                  color: themeData.colorScheme.primary,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedTextIndex = loginTab;
                              });
                            },
                            child: Text('Login'.toUpperCase(),
                                style: tabTextStyle.apply(
                                    color: selectedTextIndex == loginTab
                                        ? Colors.white
                                        : Colors.white54)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedTextIndex = signUpTab;
                              });
                            },
                            child: Text('Sign Up'.toUpperCase(),
                                style: tabTextStyle.apply(
                                    color: selectedTextIndex == signUpTab
                                        ? Colors.white
                                        : Colors.white54)),
                          ),
                        ],
                      ),
                    ),
                    //White container
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                          color: themeData.colorScheme.surface,
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(32, 48, 32, 32),
                            child: selectedTextIndex == loginTab
                                ? _Login(themeData: themeData)
                                : _SignUp(themeData: themeData),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Login extends StatelessWidget {
  const _Login({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcom back', style: themeData.textTheme.headlineLarge),
        const SizedBox(height: 8),
        Text('Sign in with your account',
            style: themeData.textTheme.bodyMedium),
        const SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            label: Text(
              'Username',
              style: themeData.textTheme.bodyMedium,
            ),
          ),
        ),
        _PasswordTextField(themeData: themeData),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width, 60),
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
          ),
          child: Text('Login'.toUpperCase()),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Forgot your Password?'),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {},
              child: const Text('Reset here'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Center(
          child: Text(
            'OR SIGN IN WITH',
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(height: 16),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Assets.img.icons.google.image(width: 36, height: 36),
          const SizedBox(width: 24),
          Assets.img.icons.facebook.image(width: 36, height: 36),
          const SizedBox(width: 24),
          Assets.img.icons.twitter.image(width: 36, height: 36),
        ]),
      ],
    );
  }
}

class _SignUp extends StatelessWidget {
  const _SignUp({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcom to blog club', style: themeData.textTheme.headlineLarge),
        const SizedBox(height: 8),
        Text('Please enter your information',
            style: themeData.textTheme.bodyMedium),
        const SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            label: Text(
              'Fullname',
              style: themeData.textTheme.bodyMedium,
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            label: Text(
              'Username',
              style: themeData.textTheme.bodyMedium,
            ),
          ),
        ),
        _PasswordTextField(themeData: themeData),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width, 60),
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
          ),
          child: Text('Sign Up'.toUpperCase()),
        ),
        const SizedBox(height: 16),
        const Center(
          child: Text(
            'OR SIGN UP WITH',
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(height: 16),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Assets.img.icons.google.image(width: 36, height: 36),
          const SizedBox(width: 24),
          Assets.img.icons.facebook.image(width: 36, height: 36),
          const SizedBox(width: 24),
          Assets.img.icons.twitter.image(width: 36, height: 36),
        ]),
      ],
    );
  }
}

class _PasswordTextField extends StatefulWidget {
  const _PasswordTextField({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  State<_PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<_PasswordTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        suffix: InkWell(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: Text(obscureText ? 'Show' : 'Hide',
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).colorScheme.primary)),
        ),
        label: Text(
          'Password',
          style: widget.themeData.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
