import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade300,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade300,
                      width: 1.5,
                    ),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                cursorColor: Colors.blueGrey.shade500,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade300,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade300,
                      width: 1.5,
                    ),
                  ),
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.blueGrey.shade300,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                cursorColor: Colors.blueGrey.shade500,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Forgot password or email? Reset',
                  style: TextStyle(
                    color: Colors.blueGrey.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade800,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.blueGrey.shade800,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.app_registration_outlined,
                  color: Colors.blueGrey.shade800,
                ),
                label: Center(
                  child: Text(
                    'Log in with Bank ID',
                    style: TextStyle(
                      color: Colors.blueGrey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
