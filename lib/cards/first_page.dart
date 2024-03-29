import 'package:bank_feb/accounts/account_page.dart';
import 'package:bank_feb/analytics/analytics_page.dart';
import 'package:bank_feb/cards/main_card.dart';
import 'package:bank_feb/payments/payment_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade600,
                  ),
                  const Text(
                    'Cards',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'MULTI-USE',
                style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white38,
                ),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey.shade800,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 5, 5, 0),
                          child: Text(
                            'VISA',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 8,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.star_purple500_rounded,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                  title: Text(
                    'Main card',
                    style: TextStyle(
                      color: Colors.blueGrey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Activated',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade600,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainCard(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.blueGrey.shade600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'SINGLE-UP',
                style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white38,
                ),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey.shade800,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 5, 5, 0),
                          child: Text(
                            'VISA',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 8,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.star_purple500_rounded,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                  title: Text(
                    'Basic card',
                    style: TextStyle(
                      color: Colors.blueGrey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Activated',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.blueGrey.shade600,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'PHYSICAL',
                style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white38,
                ),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey.shade900,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 5, 5, 0),
                          child: Text(
                            'VISA',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 8,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.star_purple500_rounded,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                  title: Text(
                    'Basic card',
                    style: TextStyle(
                      color: Colors.blueGrey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Expired',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade300,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.blueGrey.shade600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white38,
                ),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.lime.shade800,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 5, 5, 0),
                          child: Text(
                            'VISA',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 8,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.star_purple500_rounded,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                  title: Text(
                    'Credit card',
                    style: TextStyle(
                      color: Colors.blueGrey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Not activated',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.blueGrey.shade600,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey.shade800,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.account_balance_outlined,
              ),
            ),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.credit_card_rounded,
              ),
            ),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnalyticsPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.signal_cellular_alt,
              ),
            ),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.currency_exchange,
              ),
            ),
            label: 'Payments',
          ),
        ],
      ),
    );
  }
}
