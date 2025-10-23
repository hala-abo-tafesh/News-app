import 'package:flutter/material.dart';
import 'package:hr/shared/components/components.dart';
// reusable components

//1. timing
//2. refactor
//3. quality
//4. clean code
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formkey ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultFormField(
                  controller: emailcontroller,
                  label: 'Email',
                  prefix: Icons.email,
                  type: TextInputType.emailAddress,
                  validate: (value) {
                    if (value!.isEmpty)
                      {
                        return 'email must not be empty';
                      }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                defaultFormField(
                  controller: passwordcontroller,
                  label: 'Password',
                  prefix: Icons.lock,
                  suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                  isPassword: isPassword,
                  suffixPressed: ()
                  {
                    setState((){
                    // isPassword = !isPassword;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate: (value) {
                    if (value!.isEmpty)
                    {
                      return 'Password is too short';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                text:'login',
                  function: () {
                  if(formkey.currentState?.validate()?? false)
                  {
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                  }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                  text:'register',
                  function: () {
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account',
                    ),
                    TextButton(onPressed:() {},
                        child: Text(
                    'Register Now',
                    ),
                    ),
            ],
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
