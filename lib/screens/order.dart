import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Order #1688068'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'May 31,05:42 PM',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.circle,
                      color: Colors.blue,
                    ),
                    Text(
                      '  Delivered',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  children: const [
                    Text(
                      '1 ITEM',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.receipt_sharp,
                      color: Colors.blue,
                    ),
                    Text(
                      '  RECEIPT',
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                List(),
                const SizedBox(height: 10),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  children: const [Text('Item total'), Spacer(), Text('₹ 799')],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Text('Delivery'),
                    Spacer(),
                    Text(
                      'FREE',
                      style: TextStyle(color: Color.fromARGB(255, 5, 153, 10)),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text('Grand Total',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text('₹ 799')
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(thickness: 2),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text('CUSTOMER DETAILS'),
                    Spacer(),
                    Icon(
                      Icons.share_rounded,
                      color: Colors.blue,
                    ),
                    Text(
                      '  SHARE',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [Text('Deepaa'), Text('+91-9845632125')],
                    ),
                    const Spacer(),
                    const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.phone_rounded),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            'D 1101 Charted Beverly\nHills,Subramanyapuram P.O')
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'City',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('Bangalore')
                      ],
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Pincode',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text('560061')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Payment',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Text('Online'),
                            //Spacer(),
                            const SizedBox(width: 270),
                            Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Colors.green),
                              child: const Text(
                                'PAID',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const Divider(thickness: 2),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('ADDITIONAL INFORMATION'),
                    SizedBox(height: 10),
                    Text('Karnataka'),
                    Text('Email'),
                    Text("greeniceaqua@gmail.com")
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Share recieptt',
                    style: TextStyle(color: Colors.blue),
                  )),
                )
              ],
            ),
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget List() {
    return Column(children: [
      Row(
        children: [
          Container(
            width: 60,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.black, width: .9)),
            child: const Image(
              image: AssetImage('assets/5sleeve.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Explore|Men|Navy blue'),
              const Text('1 Piece'),
              const Text('Size: XL'),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(color: Colors.blue),
                    ),
                    height: 20,
                    width: 20,
                    child: const Text(
                      '1',
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Text('x ₹799'),
                  //  const Text('₹ 7999')
                ],
              )
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  '₹ 799',
                  textAlign: TextAlign.left,
                )
              ],
            ),
          )
        ],
      ),
    ]);
  }
}
