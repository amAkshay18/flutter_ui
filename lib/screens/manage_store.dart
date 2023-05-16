import 'package:flutter/material.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({super.key});

  @override
  State<ManageStore> createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  var myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Store'),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 226, 223, 223),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GridView(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.volume_up_sharp,
                          color: Colors.orange,
                        ),
                      ),
                      const Text(
                        'Marketing \nDesigns',
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.money_sharp,
                          color: Colors.green,
                        ),
                      ),
                      const Text('Online \nPayments')
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.message,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      const Text('Discount \nCoupons')
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.people,
                          color: Colors.lightBlue[300],
                        ),
                      ),
                      const Text('My \nCustomers')
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.qr_code_scanner_sharp,
                          color: Colors.grey,
                        ),
                      ),
                      Text('Store QR \nCode')
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.currency_rupee,
                          color: Colors.purple,
                        ),
                      ),
                      Text('Extra \nCharges')
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(
                          Icons.article_outlined,
                          color: Colors.indigoAccent,
                        ),
                      ),
                      Text('Order \nForm')
                    ],
                  ),
                ),
              ],
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 2)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Account',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
