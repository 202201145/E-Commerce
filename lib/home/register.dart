import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  static const String routeName = 'register';

  Register({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context, 'LogIn'),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ],
          ),
          toolbarHeight: MediaQuery.of(context).size.height * 0.15,
          centerTitle: true,
          title: Text(
            'Route',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          backgroundColor: Color(0xFF004182),
        ),
        backgroundColor: Color(0xFF004182),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Form(
              key: _formKey, // Assign the key to the Form
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Full Name
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Full Name ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  TextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null; // Validation passed
                    },
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter Your Full Name',
                      focusColor: Colors.green,
                      suffixIconColor: Colors.white,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),

                  // Mobile Number
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Mobile Number ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  TextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      // Add phone number format validation here
                      return null; // Validation passed for now
                    },
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your Mobile Number',
                      fillColor: Colors.white,
                      filled: true,
                      suffixIconColor: Colors.white,
                    ),
                  ),

                  // Email Address
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Email Address ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  TextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your email address';
                      } else if (!RegExp(r"\S+@\S+\.\S+").hasMatch(text)) {
                        return 'Please enter a valid email address';
                      }
                      return null; // Validation passed
                    },
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your Email Address',
                      fillColor: Colors.white,
                      filled: true,
                      suffixIconColor: Colors.white,
                    ),
                  ),

                  // Password
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Password ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  TextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your password';
                      }
                      // Add more complex password validation here
                      return null; // Validation passed for now
                    },
                    obscureText: true, // Use this to hide password input
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your Password',
                      fillColor: Colors.white,
                      filled: true,
                      suffixIconColor: Colors.white,
                    ),
                  ),

                  SizedBox(height:15),
                  Text('Confirm Your Password',style: TextStyle(color: Colors.white, fontSize: 20),),
                  TextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your password';
                      }
                      // Add more complex password validation here
                      return null; // Validation passed for now
                    },
                    obscureText: true, // Use this to hide password input
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Confirm your Password',
                      fillColor: Colors.white,
                      filled: true,
                      suffixIconColor: Colors.white,
                    ),
                  ),
                  // Sign Up Button
                  ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, 'home-screen');
                      if (_formKey.currentState?.validate() ?? false) {
                      } else {
                        // If the form is invalid, display error messages
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please fill all required fields')),

                        );
                      }
                    },
                    child: Text(
                      'Signed Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
