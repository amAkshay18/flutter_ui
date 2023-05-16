import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  final List<String> _options = ['On Hold', 'Payouts(15)', 'Refunds'];
  String _selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.info_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 197, 197, 197),
                      width: .2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction Limit',
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        'A free limit up to which you will receive \nthe online payments directly in your bank',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 342,
                              height: 30,
                              child: LinearPercentIndicator(
                                percent: 0.33,
                                backgroundColor:
                                    const Color.fromARGB(255, 212, 210, 210),
                                progressColor: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        '36,668 left out of ₹50,000',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Increase limit',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: const [
                  Text('Default Method'),
                  Spacer(),
                  Text(
                    'Online Payments',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey)
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: const [
                  Text('Payment Profile'),
                  Spacer(),
                  Text(
                    'Bank Account',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: const [
                  Text('Payments Overview'),
                  Spacer(),
                  Text(
                    'Life Time',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFFF5100),
                      borderRadius: BorderRadius.circular(6)),
                  width: 170,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'AMOUNT ON HOLD',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 9, 233, 16),
                      borderRadius: BorderRadius.circular(6)),
                  width: 170,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'AMOUNT RECEIVED',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹13,332',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: const [Text('Transactions')],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _options.map((option) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                      label: _selectedOption == option
                          ? Text(
                              option,
                              style: const TextStyle(color: Colors.white),
                            )
                          : Text(
                              option,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 110, 108, 108)),
                            ),
                      selected: _selectedOption == option,
                      backgroundColor:
                          _selectedOption == option ? Colors.blue : null,
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedOption = selected ? option : '';
                        });
                      },
                      selectedColor: Colors.blue,
                      labelStyle: _selectedOption == option
                          ? const TextStyle(color: Colors.white)
                          : const TextStyle(
                              color: Color.fromARGB(255, 197, 196, 196)),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  list1(
                    imageAddress: 'assets/5sleeve.jpeg',
                    orderNumber: 'Order #1688068',
                    time: 'Jul 12, 02:06 PM',
                    amount: '₹799',
                  ),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/cup.jpeg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹397.4'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/rcb.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹686.42'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/csk.webp',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1123.5'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/mi.jpeg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1722.5'),
                  const Divider(thickness: 2),
                  list1(
                    imageAddress: 'assets/5sleeve.jpeg',
                    orderNumber: 'Order #1688068',
                    time: 'Jul 12, 02:06 PM',
                    amount: '₹799',
                  ),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/cup.jpeg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹397.4'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/rcb.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹686.42'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/csk.webp',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1123.5'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/mi.jpeg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1722.5'),
                  const Divider(thickness: 2),
                  list1(
                    imageAddress: 'assets/5sleeve.jpeg',
                    orderNumber: 'Order #1688068',
                    time: 'Jul 12, 02:06 PM',
                    amount: '₹799',
                  ),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/cup.jpeg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹397.4'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/rcb.jpg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹686.42'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/csk.webp',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1123.5'),
                  const Divider(thickness: 2),
                  list1(
                      imageAddress: 'assets/mi.jpeg',
                      orderNumber: 'Order #1688068',
                      time: 'Jul 12, 02:06 PM',
                      amount: '₹1722.5'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  list1(
      {required String imageAddress,
      required String orderNumber,
      required String time,
      required String amount}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: .9, color: Colors.black)),
                  child: Image.asset(imageAddress)
                  // Image(
                  //   image: AssetImage(imageAddress),
                  //   fit: BoxFit.cover,
                  // ),
                  ),
              const SizedBox(width: 20),
              Column(
                children: [Text(orderNumber), Text(time)],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    amount,
                    style: const TextStyle(color: Colors.blue),
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Text('Successfull')
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '$amount deposited to 586459632',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
