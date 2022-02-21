import 'package:flutter/material.dart';
import 'package:m_care_mobile_app/ui/configs/router/router_name.dart';
import 'package:m_care_mobile_app/ui/configs/theme/app_colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscure = true;
  final myUserNameController = TextEditingController();
  final myPasswordController = TextEditingController();
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
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        // title: const Text(
        //   'Sign In',
        //   style: TextStyle(color: AppColor.primaryTextColor),
        // ),
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: AppColor.primaryIconColor,
        //   ),
        //   onPressed: () {
        //     Navigator.pushNamed(context, RouterName.signupPage);
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
              SizedBox(
                //   width: size.width * 0.9,
                child: TextField(
                  controller: myUserNameController,
                  decoration: const InputDecoration(
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
                //   width: size.width * 0.9,
                child: TextField(
                  controller: myPasswordController,
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
                width: size.width * 0.9,
                height: 80,
                child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () {
                    if (myUserNameController.text == 'Admin' &&
                        myPasswordController.text == 'Admin') {
                      Navigator.pushNamed(
                          context, RouterName.devicesControlPage);
                    }
                  },
                  child: const Text(
                    'ĐĂNG NHẬP',
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
                    'Bạn chưa có tài khoản mCare? ',
                    style: TextStyle(
                      color: AppColor.primaryTextColor,
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Đăng kí ngay',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, RouterName.signupPage);
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
