import 'package:flutter/material.dart';

class DukaanPremium extends StatefulWidget {
  const DukaanPremium({super.key});

  @override
  State<DukaanPremium> createState() => _DukaanPremiumState();
}

class _DukaanPremiumState extends State<DukaanPremium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dukaan Premiumm'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue,
                  ),
                  Positioned(
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                      width: 350,
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/DukaanPremium.jpg',
                            width: 210,
                            height: 60,
                            fit: BoxFit.fill,
                          ),
                          const Text(
                            'Get Dukaan Premium for just\n₹4,999/year',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                              textAlign: TextAlign.center,
                              'All the advanced features for scaling your\nbusiness.')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('  Features'),
                  ListTile(
                    leading: Icon(Icons.domain_rounded),
                    title: Text('Custom domain name'),
                    subtitle: Text(
                        'Get your own custom domain and build \nyour brand on the internet'),
                  ),
                  ListTile(
                    leading: Icon(Icons.verified),
                    title: Text('Get green verified badge'),
                    subtitle: Text(
                        'Get green verified bdge under your \nstore name and build trust.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.laptop_rounded),
                    title: Text('Dukaan for PC'),
                    subtitle: Text(
                        'Access all the axclusive premium \nfeatures on dukaan for PC.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.headphones_rounded),
                    title: Text('Priority support'),
                    subtitle: Text(
                        'Get your questions resolved with our prority customer support.'),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            const Divider(thickness: 3),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What is dukaan Premium?',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: const Image(
                      image: AssetImage('assets/BusinessOnline.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const Divider(thickness: 3),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Frequently asked questions',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  list(
                      title: 'What type of business can use Dukaan\nPremium?',
                      subtitle:
                          'Ddukaan caters to a wide variety of sellers.Be it a \nsmall grocery store or a big legacy brand - anyone who \nwants to sell their products/services online - \nDukaan is the prefect platform for you.',
                      icon: const Icon(Icons.minimize_outlined)),
                  const SizedBox(height: 10),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  list2(title: 'What is your refund polic?'),
                  const SizedBox(height: 10),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  list2(
                      title:
                          'Will there be an automatic charge after the\npaid tiral?'),
                  const SizedBox(height: 10),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  list2(title: 'What payment methods do you offer?'),
                  const SizedBox(height: 10),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  list2(title: 'What happens when my free trial ends?'),
                  const SizedBox(height: 10),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  list2(title: 'What are the terms for the custom domain?')
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 3),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Need help? get in touch',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: 160,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.chat_bubble_outline),
                            Text('LiveChat')
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 160,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.call_outlined),
                            Text('Phone call')
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 3),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text(
                    'Select Domain',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 24, 65, 141),
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Get Premium',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500))),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget list(
      {required String title, required Icon icon, required String subtitle}) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            icon
          ],
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          style: const TextStyle(color: Color.fromARGB(255, 121, 95, 95)),
        ),
      ],
    );
  }

  Widget list2({required String title}) {
    return Row(
      children: [
        Text(title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        const Spacer(),
        const Icon(Icons.add)
      ],
    );
  }
}
