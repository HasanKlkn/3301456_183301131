import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavBar',
      theme: ThemeData(
        primaryColor: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 143, 192, 237),
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          "Türkiye Bölgeler",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.nature,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.nature_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.sunny,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 228, 230, 231),
      child: Center(
        child: Text(
          "Anasayfa",
          style: TextStyle(
            color: Colors.black,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: ElevatedButton(
                child: const Text('Akdeniz Bölgesi'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AkdenizRoute()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Marmara Bölgesi'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MarmaraRoute()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Karadeniz Bölgesi'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KaradenizRoute()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Güneydoğu Anadolu Bölgesi'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GuneyRoute()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Doğu Anadolu Bölgesi'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DoguRoute()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Ege Bölgesi'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const icRoute()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('İç Anadolu Bölgesi'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EgeRoute()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Icon(Icons.sunny, color: Colors.yellow[500]),
                const Text('İstanbul: Hava Durumu'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.sunny, color: Colors.yellow[500]),
                const Text('Antalya: Hava Durumu'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.sunny, color: Colors.yellow[500]),
                const Text('Ankara: Hava Durumu'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.sunny, color: Colors.yellow[500]),
                const Text('Kayseri: Hava Durumu'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.sunny, color: Colors.yellow[500]),
                const Text('Trabzon: Hava Durumu'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.sunny, color: Colors.yellow[500]),
                const Text('Hatay: Hava Durumu'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.sunny, color: Colors.yellow[500]),
                const Text('Van: Hava Durumu'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 217, 216, 216),
      child: Center(
        child: Text(
          "Ayarlar",
          style: TextStyle(
            color: Colors.black,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class AkdenizRoute extends StatelessWidget {
  const AkdenizRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akdeniz Bölgesi'),
        backgroundColor: Color.fromARGB(255, 6, 108, 32),
      ),
      backgroundColor: Color.fromARGB(255, 13, 164, 79),
    );
  }
}

class MarmaraRoute extends StatelessWidget {
  const MarmaraRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marmara Bölgesi'),
        backgroundColor: Color.fromARGB(255, 6, 108, 32),
      ),
      backgroundColor: Color.fromARGB(255, 13, 164, 79),
    );
  }
}

class KaradenizRoute extends StatelessWidget {
  const KaradenizRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Karadeniz Bölgesi'),
        backgroundColor: Color.fromARGB(255, 6, 108, 32),
      ),
      backgroundColor: Color.fromARGB(255, 13, 164, 79),
    );
  }
}

class GuneyRoute extends StatelessWidget {
  const GuneyRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Güneydoğu Anadolu Bölgesi'),
        backgroundColor: Color.fromARGB(255, 6, 108, 32),
      ),
      backgroundColor: Color.fromARGB(255, 13, 164, 79),
    );
  }
}

class DoguRoute extends StatelessWidget {
  const DoguRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doğu Anadolu Bölgesi'),
        backgroundColor: Color.fromARGB(255, 6, 108, 32),
      ),
      backgroundColor: Color.fromARGB(255, 13, 164, 79),
    );
  }
}

class EgeRoute extends StatelessWidget {
  const EgeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ege Bölgesi'),
        backgroundColor: Color.fromARGB(255, 6, 108, 32),
      ),
      backgroundColor: Color.fromARGB(255, 13, 164, 79),
    );
  }
}

class icRoute extends StatelessWidget {
  const icRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İç Anadolu Bölgesi'),
        backgroundColor: Color.fromARGB(255, 6, 108, 32),
      ),
      backgroundColor: Color.fromARGB(255, 13, 164, 79),
    );
  }
}
