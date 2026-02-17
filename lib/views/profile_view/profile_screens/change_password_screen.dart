import 'package:flutter/material.dart';
import '../../../core/utils/custom_widgets/custom_elevatedbutton.dart';
import '../../../core/utils/custom_widgets/custom_textfield.dart';
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            CustomTextField(
              prefixIcon: Icon(Icons.lock_outline,),
              suffixIcon: Icon(Icons.visibility_off_outlined),

              controller: TextEditingController(),
              hintText: 'Enter password',
              labelText: 'Old password',
              obscureText: true,
            ),
            SizedBox(height: 20,),
            CustomTextField(
              prefixIcon: Icon(Icons.lock_outline,),
              controller: TextEditingController(),
              hintText: 'Enter password',
              labelText: 'New password',
              obscureText: true,
              suffixIcon: Icon(Icons.visibility_off_outlined),
            ),
            SizedBox(height: 20,),
            CustomTextField(
              prefixIcon: Icon(Icons.lock_outline,),
              controller: TextEditingController(),
              hintText: 'Enter password',
              labelText: 'Confirm password',
              obscureText: true,
            ),
            Spacer(),

            Align(
              alignment: Alignment.bottomCenter,

                child: CustomElevatedButton(text: 'Change password', onPressed: (){})),


          ],),
      )
      );
  }
}
