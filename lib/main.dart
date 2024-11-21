import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                // Teks Selamat Datang di FoodMart di atas animasi
                Text(
                  'Selamat Datang di FoodMart',
                  style: GoogleFonts.montserrat(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0), // Jarak antara teks dan animasi

                // Animasi JSON di bawah teks
                Lottie.asset(
                  'assets/Foodlogin.json',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Login',
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            // Field Username
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            // Field Password
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            // Tombol untuk Register
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Belum Login? Register Dulu'),
                  onPressed: () {
                    // Navigasi ke halaman RegisterPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            // Tombol Login
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.green, // Warna background tombol
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                  vertical: MediaQuery.of(context).size.height * 0.03,
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                // Aksi saat tombol Login ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Onboardingpage()),
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 2, 2),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                // Teks Selamat Datang di FoodMart di atas animasi
                Text(
                  'Selamat Datang di FoodMart',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0), // Jarak antara teks dan animasi

                // Animasi JSON di bawah teks
                Image.asset(
                  'assets/Pecellele.jpeg',
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Register',
                  style: GoogleFonts.abhayaLibre(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            // Field Username
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            // Field Password
            TextField(
              controller: _emailController,
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Email Address',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            // Field Password
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            // Tombol Login
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.green, // Warna background tombol
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                  vertical: MediaQuery.of(context).size.height * 0.03,
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                // Aksi saat tombol Login ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // Mengaktifkan mode immersive system UI
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Menunggu 2 detik sebelum navigasi ke halaman selanjutnya
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => DashboardPage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    // Mengembalikan mode system UI ke manual setelah splash screen
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(242, 20, 248, 89),
      body: Center(
        // Membungkus semuanya di dalam Center untuk memastikan di tengah layar
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Vertikal tengah
          crossAxisAlignment: CrossAxisAlignment.center, // Horizontal tengah
          children: [
            // Menampilkan animasi Lottie
            Lottie.asset(
              'assets/troli.json', // Ganti dengan path file Lottie yang sesuai
              width: 200,
              height: 200,
              fit: BoxFit.cover, // Menyesuaikan dengan BoxFit yang diinginkan
            ),
            const SizedBox(
                height: 20.0), // Memberikan jarak antara animasi dan teks
            // Menampilkan teks Loading
            const Text(
              'Loading...',
              style: TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});
  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                _onboardingScreen(
                  'assets/esbuah.jpeg',
                  'Welcome to our app!',
                  'Belanjakan dirimu dengan makanan yang lezat',
                ),
                _onboardingScreen(
                  'assets/Rujak buah.jpeg',
                  'Track your shop',
                  'Dengan memberikan harga yang murah',
                ),
                _onboardingScreen(
                  'assets/sushi.jpeg',
                  'Get started now!',
                  'siapkan dirimu untk menghabiskan uang',
                  isLastPage: true,
                ),
              ],
            ),
          ),
          // SmoothPageIndicator
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const WormEffect(), // Different indicator effects
            onDotClicked: (index) {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _onboardingScreen(String imagePath, String title, String description,
      {bool isLastPage = false}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          if (isLastPage)
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                );
              },
              child: const Text('Get Started'),
            ),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String itemTitle;
  final String itemImage;

  const DetailPage({
    Key? key,
    required this.itemTitle,
    required this.itemImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(itemImage, height: 250, width: 250),
            const SizedBox(height: 20),
            Text(itemTitle,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

// Dashboard Page dengan Grid
class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'title': 'Item 1',
      'image': 'assets/esbuah.jpeg',
    },
    {
      'title': 'Item 2',
      'image': 'assets/Rujak buah.jpeg',
    },
    {
      'title': 'Item 3',
      'image': 'assets/sushi.jpeg',
    },
    {
      'title': 'Item 4',
      'image': 'assets/Pecellele.jpeg',
    },
    {
      'title': 'Item 5',
      'image': 'assets/esbuah.jpeg',
    },
    {
      'title': 'Item 6',
      'image': 'assets/sushi.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Color.fromARGB(250, 7, 204, 89),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context)
                    .openDrawer(); // Open the sidebar when the menu is tapped
              },
            );
          },
        ),
        actions: <Widget>[
          // Search and Filter Icons
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Set background color for the sidebar (green)
        child: Container(
          color: Color.fromARGB(250, 7, 204, 89), // Green color for sidebar
          child: Column(
            children: [
              // Sidebar Header (optional)
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(
                      250, 7, 204, 89), // Matching green color for header
                ),
                accountName:
                    Text("Username", style: TextStyle(color: Colors.white)),
                accountEmail: Text("user@example.com",
                    style: TextStyle(color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.green),
                ),
              ),
              // Menu Items
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title:
                    const Text('Home', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  print('Home clicked');
                },
              ),
              ListTile(
                leading: const Icon(Icons.info, color: Colors.white),
                title:
                    const Text('About', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  print('About clicked');
                },
              ),
              ListTile(
                leading: const Icon(Icons.shop, color: Colors.white),
                title:
                    const Text('Shop', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  print('Shop clicked');
                },
              ),
              ListTile(
                leading: const Icon(Icons.chat, color: Colors.white),
                title:
                    const Text('Chat', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  print('Chat clicked');
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              // Navigasi ke SplashScreen sebelum DetailPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    itemTitle: items[index]['title']!,
                    itemImage: items[index]['image']!,
                  ),
                ),
              );
            },
            child: GridTile(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12.0)),
                      child: Image.asset(
                        item['image']!,
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      item['title']!,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
