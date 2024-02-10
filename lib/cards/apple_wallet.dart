import 'package:flutter/material.dart';

class AppleWallet extends StatefulWidget {
  const AppleWallet({super.key});

  @override
  State<AppleWallet> createState() => _AppleWalletState();
}

class _AppleWalletState extends State<AppleWallet> {
  bool spendinglimit = false;
  bool atm = false;
  bool contactlesstransaction = false;

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
                'LIMITS',
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
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white38,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.payments_outlined,
                        color: Colors.lime,
                      ),
                      title: Text(
                        'Spending limit',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Set a maximum amount for monthly expenses.',
                        style: TextStyle(
                          color: Colors.blueGrey.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      color: Colors.blueGrey.shade200,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.credit_card,
                        color: Colors.lime,
                      ),
                      title: Text(
                        'Contactless limit',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Set a maximum amount for contactless transactions.',
                        style: TextStyle(
                          color: Colors.blueGrey.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      color: Colors.blueGrey.shade200,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.payments_outlined,
                        color: Colors.lime,
                      ),
                      title: Text(
                        'Withdrawals limit',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Set the maximum amount for ATM withdrawals.',
                        style: TextStyle(
                          color: Colors.blueGrey.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'SETTINGS',
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
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white38,
                ),
                child: Column(
                  children: [
                    SwitchListTile(
                      activeColor: Colors.white38,
                      activeTrackColor: Colors.lime.shade700,
                      inactiveTrackColor: Colors.blueGrey.shade500,
                      value: spendinglimit,
                      onChanged: (value) {
                        setState(() {
                          spendinglimit = value;
                        });
                      },
                      title: Text(
                        'Spending limit',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      color: Colors.blueGrey.shade200,
                    ),
                    SwitchListTile(
                      activeColor: Colors.white38,
                      activeTrackColor: Colors.lime.shade700,
                      inactiveTrackColor: Colors.blueGrey.shade500,
                      value: atm,
                      onChanged: (value) {
                        setState(() {
                          atm = value;
                        });
                      },
                      title: Text(
                        'ATM withdrawals',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      color: Colors.blueGrey.shade200,
                    ),
                    SwitchListTile(
                      activeColor: Colors.white38,
                      activeTrackColor: Colors.lime.shade700,
                      inactiveTrackColor: Colors.blueGrey.shade500,
                      value: contactlesstransaction,
                      onChanged: (value) {
                        setState(() {
                          contactlesstransaction = value;
                        });
                      },
                      title: Text(
                        'Contactless transactions',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      color: Colors.blueGrey.shade200,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'PIN',
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
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white38,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.shield_outlined,
                        color: Colors.lime,
                      ),
                      title: Text(
                        'Show PIN',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Keep you PIN number safe.',
                        style: TextStyle(
                          color: Colors.blueGrey.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'ACTIONS',
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
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white38,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.swap_horiz_outlined,
                        color: Colors.lime,
                      ),
                      title: Text(
                        'Exchange card',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Set a maximum amount for monthly expenses.',
                        style: TextStyle(
                          color: Colors.blueGrey.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      color: Colors.blueGrey.shade200,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.restore_from_trash_rounded,
                        color: Colors.red,
                      ),
                      title: Text(
                        'Terminate card',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Set the maximum amount for ATM withdrawals.',
                        style: TextStyle(
                          color: Colors.blueGrey.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
