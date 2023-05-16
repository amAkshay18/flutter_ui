import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  List<Tab> myTab = [
    const Tab(
      child: Text(
        'Products',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Tab(
      child: Text(
        'Categories',
        style: TextStyle(color: Colors.white),
      ),
    )
  ];
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Catalogue'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          bottom: TabBar(tabs: myTab),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: const Color.fromARGB(255, 240, 235, 235),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 0,
                  color: Colors.white,
                ),
                const SizedBox(height: 15),
                list(
                    photo: 'assets/rcb.jpg',
                    name: 'RCB Jersey | Women...',
                    price: '₹799'),
                const SizedBox(height: 10),
                list(
                    photo: 'assets/mi.jpeg',
                    name: 'MI Jersey | Men ...',
                    price: '₹799'),
                const SizedBox(height: 10),
                list(
                    photo: 'assets/csk.webp',
                    name: 'CSK Jersey | Women...',
                    price: '₹399'),
                const SizedBox(height: 10),
                list(
                    photo: 'assets/rcb.jpg',
                    name: 'RCB Jersey | Men...',
                    price: '₹699'),
                const SizedBox(height: 10),
                list(
                    photo: 'assets/mi.jpeg',
                    name: 'MI Jersey | Women...',
                    price: '₹449'),
                const SizedBox(height: 10),
                list(
                    photo: 'assets/csk.webp',
                    name: 'CSK Jersey | Men...',
                    price: '₹599'),
                const SizedBox(height: 10),
                list(
                    photo: 'assets/rcb.jpg',
                    name: 'RCB Jersey | Women...',
                    price: '₹1799'),
                const SizedBox(height: 10),
                list(
                    photo: 'assets/mi.jpeg',
                    name: 'MI Jersey | Men...',
                    price: '₹1199'),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget list(
      {required String photo, required String name, required String price}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
      width: 345,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 90,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5)),
                child: Image.asset(
                  photo,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 9),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  const Text('1 piece'),
                  const SizedBox(height: 5),
                  Text(
                    price,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'In stock',
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 245, 4),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(Icons.more_vert),
                  const SizedBox(height: 25),
                  Switch(
                      value: val,
                      onChanged: (value) {
                        val = value;
                      }),
                ],
              ),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.share_outlined),
              SizedBox(width: 8),
              Text('Share product')
            ],
          )
        ],
      ),
    );
  }
}
