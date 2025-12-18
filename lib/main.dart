import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 260,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                      'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20201204224244/Top-5-Reasons-to-Learn-Flutter-Development.png',
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 16,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),

                      child: const Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -15,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white,

                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                          'https://cdn.shopaccino.com/igmguru/products/flutter-igmguru_1527424732_xl.jpg?v=546',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Younes K',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 245, 3, 92),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('follow', style: TextStyle(color: Colors.white)),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),

              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Likes',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '250',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'followrs',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '100',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'favorited',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '250',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 0),

            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 18,
                right: 18,
                bottom: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Post', style: TextStyle(fontSize: 16)),

                  Text(
                    'Show All',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 18,
                  right: 18,
                  bottom: 0,
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: [
                    Image.network(
                      'https://cdn.prod.website-files.com/654366841809b5be271c8358/659efd7c0732620f1ac6a1d6_why_flutter_is_the_future_of_app_development%20(1).webp',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.superjumpmagazine.com/content/images/2022/11/cover.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.mdpi.com/information/information-15-00191/article_deploy/html/images/information-15-00191-g001.png',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJzZqfXqvpgiwCTJ-FtbM_t2sjn_1e8aOXQ&s',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
