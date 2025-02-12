import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/Controller/size_controller.dart';

class SignWidget extends StatefulWidget {
  final String pageName;
  const SignWidget({super.key, required this.pageName});

  @override
  State<SignWidget> createState() => _SignWidgetState();
}

class _SignWidgetState extends State<SignWidget> {
   final SizeController _sizeController = Get.put(SizeController());
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _nameController = TextEditingController();

    final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
   

    return Padding(
      padding: EdgeInsets.only(
        top: _sizeController.screenHeight(context) * 0.014,
        left: _sizeController.screenWidth(context) * 0.05,
        right: _sizeController.screenWidth(context) * 0.05,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              "${widget.pageName} now",
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(27, 30, 40, 1),
                fontWeight: FontWeight.w600,
                fontSize: _sizeController.screenHeight(context) * 0.028,
              ),
            ),
            Text(
              widget.pageName == "Sign in"
                  ? "Please sign in to continue our app"
                  : "Please fill the details and create account",
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(125, 132, 141, 1),
                fontWeight: FontWeight.w400,
                fontSize: _sizeController.screenHeight(context) * 0.018,
              ),
            ),
            Container(
              width: _sizeController.screenWidth(context),
              height: _sizeController.screenHeight(context)*0.06,
            ),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(247, 247, 249, 1),
                hoverColor: Colors.purple,
                hintText: 'Enter Name',
                border: OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.indigo),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
              ),
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: "Email"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                } else if (!value.contains("@gmail.com")) {
                  return "Please enter a valid Gmail address";
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
