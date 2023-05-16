import 'package:flutter/material.dart';

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additional Information'),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Share Dukaan App'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('Change Language'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.call_rounded),
            title: Text('WhatsApp Chat Support'),
            trailing: Icon(
              Icons.toggle_on,
              color: Colors.blue,
            ),
          ),
          const ListTile(
            leading: Icon(Icons.lock_outlined),
            title: Text('Privacy Policy'),
          ),
          const ListTile(
            leading: Icon(Icons.star_border_rounded),
            title: Text('Rate Us'),
          ),
          const ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Sign Out'),
          ),
          const SizedBox(
            height: 280,
          ),
          Column(
            children: const [
              Text('Version'),
              SizedBox(
                height: 7,
              ),
              Text('2.4.2')
            ],
          ),
        ],
      ),
    );
  }
}
