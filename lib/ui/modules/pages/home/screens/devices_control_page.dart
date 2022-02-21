import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/router/router_name.dart';
import '../../../../configs/theme/app_colors.dart';

class DevicesControlPage extends StatefulWidget {
  const DevicesControlPage({Key? key}) : super(key: key);

  @override
  _DevicesControlPageState createState() => _DevicesControlPageState();
}

class _DevicesControlPageState extends State<DevicesControlPage> {
  bool _isLight1On = false;
  bool _isLight2On = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Điều khiển thiết bị',
          style: TextStyle(color: AppColor.primaryTextColor),
        ),
        leading: IconButton(
          icon: const Icon(Icons.add,
              color: AppColor.secondaryIconColor, size: 50),
          onPressed: () {
            Navigator.pushNamed(context, RouterName.addDevicePage);
          },
        ),
        actions: <Widget>[
          GestureDetector(
            child: CircleAvatar(
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
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
		  crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: AppColor.dividerColor,
            ),
            SizedBox(
              width: size.width * 0.9,
              child: Row(
				//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Image.asset(
                    'assets/images/light.png',
                    color: AppColor.primaryTextColor,
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Đèn 1',
                    style: TextStyle(
                      color: AppColor.primaryTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.52,
                  ),
                  CupertinoSwitch(
                    onChanged: (bool) {
                      setState(() {
                        _isLight1On = !_isLight1On;
                      });
                    },
                    value: _isLight1On,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: AppColor.dividerColor,
            ),
            SizedBox(
              width: size.width * 0.9,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Image.asset(
                    'assets/images/light.png',
                    color: AppColor.primaryTextColor,
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Đèn 2',
                    style: TextStyle(
                      color: AppColor.primaryTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.52,
                  ),
                  CupertinoSwitch(
                    onChanged: (bool) {
                      setState(() {
                        _isLight2On = !_isLight2On;
                      });
                    },
                    value: _isLight2On,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: AppColor.dividerColor,
            ),
            SizedBox(
              width: size.width * 0.9,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Image.asset(
                    'assets/images/black-curtain.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Rèm cửa 1',
                    style: TextStyle(
                      color: AppColor.primaryTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: size.width * 0.27),
                  SizedBox(
                    width: 150,
                    child: Row(
						// mainAxisAlignment: MainAxisAlignment.spaceBetween,
						// crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios,
                              color: AppColor.primaryColor, size: 40),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.pause_circle_outline,
                              color: AppColor.primaryColor, size: 40),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: AppColor.primaryColor, size: 40),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: AppColor.dividerColor,
            ),
			   SizedBox(
              width: size.width * 0.9,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Image.asset(
                    'assets/images/black-curtain.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Rèm cửa 2',
                    style: TextStyle(
                      color: AppColor.primaryTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: size.width * 0.27),
                  SizedBox(
                    width: 150,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios,
                              color: AppColor.primaryColor, size: 40),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.pause_circle_outline,
                              color: AppColor.primaryColor, size: 40),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: AppColor.primaryColor, size: 40),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: AppColor.dividerColor,
            ),
          ],
        ),
      ),
    );
  }
}
