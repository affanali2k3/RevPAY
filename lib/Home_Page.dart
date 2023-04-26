import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:revpay/accDetailPage.dart';
import 'package:revpay/add_loan.dart';
import 'package:revpay/loan_details.dart';
import 'package:revpay/send_money.dart';
import 'package:revpay/widgets/bottomappbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomappbar(),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'My Account',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.notifications,
                    )
                  ]),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 37, 24, 215),
                    color: const Color.fromARGB(255, 47, 33, 243),
                    // color: Color(0xFF52AA8A),
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                height: 203,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: const [
                          SizedBox(
                              height: 40,
                              width: 40,
                              child: Image(image: AssetImage('assets/cc.png'))),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '**** 2236',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ]),
                        const Text(
                          '22/04',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Balance',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                        width: double.infinity,
                        child: Text(
                          '\$ 5300.00',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountPage()));
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: const Text(
                          'More details',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SendMoney()));
                    },
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey.withOpacity(0.5))
                            ],
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: const Icon(
                          Icons.send,
                          size: 20,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Send')
                    ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePage()));
                    },
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey.withOpacity(0.5))
                            ],
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: const Icon(
                          Icons.call_received,
                          size: 20,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Receive')
                    ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loan()));
                    },
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey.withOpacity(0.5))
                            ],
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: const Icon(
                          Icons.info,
                          size: 20,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Loans')
                    ]),
                  ),
                  GestureDetector(
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey.withOpacity(0.5))
                            ],
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: const Icon(
                          Icons.send,
                          size: 20,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('More')
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5, color: Colors.grey.withOpacity(0.5))
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Recent Transactions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.outbond,
                          size: 32,
                        ),
                        Column(children: [
                          const Text(
                            'Affan Ali',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              '${DateFormat.jm().format(DateTime.now())} ${DateFormat.yMMMd().format(DateTime.now())}')
                        ]),
                        const Text(
                          '\$5',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.outbond,
                          size: 32,
                        ),
                        Column(children: [
                          const Text(
                            'Affan Ali',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                              '${DateFormat.jm().format(DateTime.now())} ${DateFormat.yMMMd().format(DateTime.now())}')
                        ]),
                        const Text(
                          '\$5',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        )
                      ],
                    ),
                  ]))
            ],
          )),
    );
  }
}