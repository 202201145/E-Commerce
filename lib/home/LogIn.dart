import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  static const String routeName = 'LogIn';

  LogIn({super.key});

  @override
  _LogInState createState() => _LogInState();

}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  var name=TextEditingController(text: 'abdallah');
  var pass=TextEditingController(text: '123456');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome Back To Route ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Users Name ',
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  // User Name Field
                  TextFormField(controller: name,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null; // Validation passed
                    },
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter Your Name',
                      focusColor: Colors.green,
                      suffixIconColor: Colors.white,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Password ',
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  // Password Field
                  TextFormField(
                    controller: pass,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null; // Validation passed
                    },
                    obscureText: _obscureText, // Obscure text based on state
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your Password',
                      fillColor: Colors.white,
                      filled: true,
                      suffixIconColor: Colors.blue,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText; // Toggle password visibility
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // If the form is valid, navigate to the home screen
                        Navigator.pushNamed(context, 'home-screen');
                      } else {
                        // If the form is invalid, display error messages
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please fill all required fields')),
                        );
                      }
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, 'register'),
                    child: Text(
                      'Don’t have an account? Create Account',
                      maxLines: 1,
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
