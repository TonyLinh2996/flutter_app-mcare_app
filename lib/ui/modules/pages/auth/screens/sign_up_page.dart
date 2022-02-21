import 'package:flutter/material.dart';

import '../../../../configs/router/router_name.dart';
import '../../../../configs/theme/app_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
      primary: Colors.black87,
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ).copyWith(
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 5,
            );
          }
          return BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
          ); // Defer to the widget's default.
        },
      ),
    );
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.backgroundColor,
        // centerTitle: true,
        // title: const Text(
        //   'Sign Up',
        //   style: TextStyle(color: AppColor.primaryTextColor),
        // ),
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back, color: AppColor.primaryIconColor),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 320,
                child: Image.asset('assets/images/m_Care.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                // width: size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'Tên đăng nhập',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                // width: size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                          // ignore: dead_code
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),

                    // ignore: avoid_print

                    border: const OutlineInputBorder(),
                    labelText: 'Mật khẩu',
                  ),
                  obscureText: _isObscure,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                // width: size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                          // ignore: dead_code
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),

                    // ignore: avoid_print

                    border: const OutlineInputBorder(),
                    labelText: 'Xác nhận lại mật khẩu',
                  ),
                  obscureText: _isObscure,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: size.width * 0.9,
                height: 80,
                child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () {},
                  child: const Text(
                    'ĐĂNG KÍ TÀI KHOẢN MỚI',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Bạn đã có tài khoản mCare? ',
                    style: TextStyle(
                      color: AppColor.primaryTextColor,
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Đăng nhập ngay',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, RouterName.signinPage);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
