import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GRC App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GRC HOME"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Profile Logo
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/R.1f68eff5f99f9f7cf0c7c9ac1b6efca0?rik=KgsC%2bMDY%2fTJCVw&riu=http%3a%2f%2ferovoutika.ph%2fassets%2fimages%2flogo%2funiversities-logo%2funiv-logo36.webp&ehk=t8KibctG9xW9WaOOCyoMdfGBCByZFCiw4DB8pOR%2bxDY%3d&risl=&pid=ImgRaw&r=0", // ✅ Direct GRC logo link
                ),
              ),
            ),

            SizedBox(height: 10),

            // Buttons for Colleges
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CssPage()),
                    );
                  },
                  child: Text("CCS"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CbaPage()),
                    );
                  },
                  child: Text("EDUC"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CeaPage()),
                    );
                  },
                  child: Text("COA"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CafaPage()),
                    );
                  },
                  child: Text("CBAE"),
                ),
              ],
            ),

            Spacer(),

            // Bottom navigation
            BottomNavigationBarSection(),
          ],
        ),
      ),
    );
  }
}


class BottomNavigationBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home, color: Colors.red),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.event, color: Colors.red),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.red),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}



// CCS Page
class CssPage extends StatelessWidget {
  final List<String> images = [
    "https://res.cloudinary.com/cloudinary-marketing/images/f_auto,q_auto/v1649718594/Web_Assets/blog/working_with_css_22218720ab/working_with_css_22218720ab.jpg?_i=AA",
    "https://cdn.prod.website-files.com/64a6f67b79a80fd9ff31ca7a/651861925d86eb8b1c8d90b0_651189e081964b9002b1e6d1_64c2586cc3eccac8b6a2e3a9_tb.png",
    "https://trainingexpress.org.uk/wp-content/uploads/2024/05/Screenshot-460x292.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CCS"), backgroundColor: Colors.red),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Image.network(images[index], height: 150),
          );
        },
      ),
    );
  }
}

// EDUC Page
class CbaPage extends StatelessWidget {
  final List<String> images = [
    "https://static.vecteezy.com/system/resources/previews/002/974/695/non_2x/poster-of-different-educational-course-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/thumbnails/034/899/542/small_2x/international-education-day-vertical-poster-flat-cartoon-hand-drawn-templates-background-illustration-vector.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EDUC"), backgroundColor: Colors.red),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Image.network(images[index], height: 150),
          );
        },
      ),
    );
  }
}

// COA Page
class CeaPage extends StatelessWidget {
  final List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo2_PV9a2ncsGuPW-W8HKNH89SWFcK0FcZHQ&s",
    "https://cebudailynews.inquirer.net/files/2022/06/Commission-on-Audit-COA-1024x582.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("COA"), backgroundColor: Colors.red),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Image.network(images[index], height: 150),
          );
        },
      ),
    );
  }
}

// CBAE Page
class CafaPage extends StatelessWidget {
  final List<String> images = [
    "https://www.allbusinessschools.com/wp-content/uploads/2024/12/Business-administration-explained-3.webp",
    "https://i0.wp.com/blog.ihararejobs.com/blog/wp-content/uploads/2021/11/Business-Administration.jpg?resize=678%2C381&ssl=1",
    "https://smesouthafrica.co.za/wp-content/uploads/2024/08/Business-administration-.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CBAE"), backgroundColor: Colors.red),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Image.network(images[index], height: 150),
          );
        },
      ),
    );
  }
}


class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events"), backgroundColor: Colors.red),
      body: Center(child: Text("Here are the Events")),
    );
  }
}

// =================== SETTINGS PAGE ===================
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"), backgroundColor: Colors.red),
      body: Center(child: Text("Adjust your settings here")),
    );
  }
}
