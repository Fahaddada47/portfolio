import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Color(0xFF030E41),
      ),
      home: PortfolioHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'WELCOME TO MY PORTFOLIO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileSection(),
            CareerProfileSection(),
            ProjectSection(),
            SocialMediaSection(),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.0, top: 16.0),
                  child: Text(
                    'Md Fahad Islam',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8.0,width: 8.0,),
                Padding(
                  padding: EdgeInsets.all( 30.0),
                  child: Text(
                    'Passionate app developer with a strong abstract'
                        '\nthinking .Programming in Java, Python, and Dart.\nUse GitHub, Docker, '
                        'and Replit repository to deliver.\nKeen interest in data analysis',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.0),
          Padding(
            padding: EdgeInsets.only(right: 30.0),
          child: CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(
                'https://scontent.fcgp3-2.fna.fbcdn.net/v/t39.'
                    '30808-6/296159339_1245681952850774_257339681195218780_n.jpg?_nc'
                    '_cat=111&cb=99be929b-3346023f&ccb=1-7&_nc_sid=174925&_nc_eui2=Ae'
                    'H6SwC8kgDgGoIlZUY2QW3QmIx5SWCrxUCYjHlJYKvFQMyDWCXH6Zf_0SHXTxZE1Jc'
                    'p_cFKACVdzN-ky1LoHdfe&_nc_ohc=AsDj0nfUJZMAX_EOr3A&_nc_ht=sc'
                    'ontent.fcgp3-2.fna&oh=00_AfCgQWGH7YtUM8JN32pqFMUvodv7Z2TTP5I'
                    'Qj0TLrNXsfA&oe=64A78BE5'),
          ),)
        ],
      ),
    );
  }
}

class CareerProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Career Profile',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'Description of your career profile and achievements',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class ProjectSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Projects',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          ProjectItem(
            title: 'Project 1',
            description: 'Description of Project 1',
            link: 'https://project1.com',
          ),
          ProjectItem(
            title: 'Project 2',
            description: 'Description of Project 2',
            link: 'https://project2.com',
          ),
          // Add more ProjectItems for your projects
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  const ProjectItem({
    required this.title,
    required this.description,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Text(description),
          SizedBox(height: 4.0),
          TextButton(
            onPressed: () {
              // Open the project link
            },
            child: Text(
              'Visit Project',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialMediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialMediaButton(
            icon: Icons.facebook,
            link: 'https://facebook.com',
          ),
          SocialMediaButton(
            icon: Icons.add,
            link: 'https://twitter.com',
          ),
          SocialMediaButton(
            icon: Icons.add,
            link: 'https://linkedin.com',
          ),
          // Add more SocialMediaButtons for your social media links
        ],
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final String link;

  const SocialMediaButton({
    required this.icon,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: () {
        // Open the social media link
      },
    );
  }
}
