import 'package:flutter/material.dart';

import '../../../../configs/router/router_name.dart';
import '../../../../configs/theme/app_colors.dart';

class UserAcountInfoPage extends StatefulWidget {
  const UserAcountInfoPage({Key? key}) : super(key: key);

  @override
  _UserAcountInfoPageState createState() => _UserAcountInfoPageState();
}

class _UserAcountInfoPageState extends State<UserAcountInfoPage> {
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
        title: const Text(
          'Thông tin tài khoản',
          style: TextStyle(color: AppColor.primaryTextColor),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.secondaryIconColor,
            size: 44,
          ),
          onPressed: () {
            Navigator.pop(context);
            ;
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
				const SizedBox(
                height: 50,
              ),
              GestureDetector(
                child: CircleAvatar(
                  radius: 110,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/img_avatar.png',
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, RouterName.userAcountInfoPage);
                },
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Xin chào Admin',
                style: TextStyle(
                    color: AppColor.primaryTextColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                // width: size.width * 0.9,
                child: TextField(
                  controller: myUserNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: UnderlineInputBorder(),
                    labelText: 'Tên đăng nhập mới',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                // width: size.width * 0.9,
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

                    border: const UnderlineInputBorder(),
                    labelText: 'Mật khẩu cũ',
                  ),
                  obscureText: _isObscure,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                // width: size.width * 0.9,
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

                    border: const UnderlineInputBorder(),
                    labelText: 'Mật khẩu mới',
                  ),
                  obscureText: _isObscure,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: size.width * 0.9,
                height: 80,
                child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () {
                    //   if (myUserNameController.text == 'Admin' &&
                    //       myPasswordController.text == 'Admin') {
                    //     Navigator.pushNamed(context, RouterName.devicesControlPage);
                    //   }
                  },
                  child: const Text(
                    'LƯU THAY ĐỔI',
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
            ],
          ),
        ),
      ),
    );
  }
}
