import 'package:flutter/material.dart';

import '../../../../configs/router/router_name.dart';
import '../../../../configs/theme/app_colors.dart';

class AddDevicePage extends StatefulWidget {
  const AddDevicePage({ Key? key }) : super(key: key);

  @override
  _AddDevicePageState createState() => _AddDevicePageState();
}

class _AddDevicePageState extends State<AddDevicePage> {
	final mySerialController = TextEditingController();

	
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
          'Thêm thiết bị mới',
          style: TextStyle(color: AppColor.primaryTextColor),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: AppColor.secondaryIconColor, size: 44),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.qr_code_scanner,
                color: AppColor.secondaryIconColor, size: 44),
            onPressed: () {
              //Navigator.pop(context);
            },
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),

	  body: Padding(
	    padding: const EdgeInsets.all(20),
	    child: Column(
			crossAxisAlignment: CrossAxisAlignment.center,
			children: [
            const SizedBox(
              height: 250,
            ),
            SizedBox(
            //   width: size.width * 0.9,
              child: TextField(
                controller: mySerialController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.devices),
                  border: OutlineInputBorder(),
				  labelText: 'Serial number',
				  helperText: 'Mã thiết bị được in trên tem phía sau của sản phẩm. Ví dụ (1A:2B:3C:4C).',
				
                ),
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
                    'KẾT NỐI',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],),
	  )
	  
	);
  }
}