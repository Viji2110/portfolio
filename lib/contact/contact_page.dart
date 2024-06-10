import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/title_text.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const TitleText(prefix: "", title: 'Contact details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width <= 700
                ? 12
                : MediaQuery.of(context).size.width * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 700) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.transparent,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/png/contact.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 150),
                        const Expanded(
                          flex: 3,
                          child: ContactDetails(),
                        ),
                      ],
                    );
                  } else {
                    return Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 300,
                            height: 300,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/png/contact.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          const ContactDetails(),
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Lets Connect',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ContactItem(
                iconPath: 'assets/images/png/gmail.png',
                text: 'vijayalakshmi@gmail.com',
                onTap: () {
                  final Uri emailUri = Uri(
                    scheme: 'mailto',
                    path: 'vijayalakshmisjec@gmail.com',
                  );
                  launchUrl(emailUri);
                },
              ),
              const SizedBox(height: 10),
              ContactItem(
                iconPath: 'assets/images/png/linkedin.png',
                text: 'LinkedIn: linkedin.com/in/vijayalakshmi',
                onTap: () {
                  launchUrl(Uri.parse(
                      'https://www.linkedin.com/in/vijaya-lakshmi-ks-501066249/'));
                },
              ),
              const SizedBox(height: 10),
              ContactItem(
                iconPath: 'assets/images/png/medium.png',
                text: 'Medium: medium.com/@vijayalakshmi',
                onTap: () {
                  launchUrl(Uri.parse('https://medium.com/@vijayalakshmisjec'));
                },
              ),
              const SizedBox(height: 10),
              ContactItem(
                iconPath: 'assets/images/png/github_logo.png',
                text: 'GitHub: github.com/vijayalakshmi',
                onTap: () {
                  launchUrl(Uri.parse(
                      'https://github.com/Viji2110?tab=repositories'));
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        );
      },
    );
  }
}

class ContactItem extends StatefulWidget {
  final String iconPath;
  final String text;
  final VoidCallback onTap;

  const ContactItem({
    Key? key,
    required this.iconPath,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  _ContactItemState createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              Image.asset(
                widget.iconPath,
                width: 18,
                height: 18,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: widget.text,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      decoration: _isHovering
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      decorationColor:
                          _isHovering ? Colors.blue : Colors.transparent,
                    ),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
