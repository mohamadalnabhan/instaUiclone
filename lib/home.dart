import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.camera_enhance_sharp),
        title: const Text("Instagram"),
        centerTitle: true,
        actions: const [
          Icon(Icons.messenger),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/flowers/flower1.jpeg"),
                      ),
                      SizedBox(height: 5),
                      Text("pic1", textAlign: TextAlign.center),
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/flowers/flower2.jpeg"),
                      ),
                      SizedBox(height: 5),
                      Text("pic2", textAlign: TextAlign.center),
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/flowers/flower3.jpeg"),
                      ),
                      SizedBox(height: 5),
                      Text("pic3", textAlign: TextAlign.center),
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/flowers/flower4.jpeg"),
                      ),
                      SizedBox(height: 5),
                      Text("pic4", textAlign: TextAlign.center),
                    ],
                  ),
                ],
              ),
            ),

            const Divider(height: 1, thickness: 1, color: Colors.grey),

            // ✅ Instagram Post (Fixed)
            _buildInstaPost(
              userPic: "assets/flowers/flower3.jpeg",
              username: "idkk",
              PostImg: "assets/flowers/flower3.jpeg", // ✅ Fixed image display
              Likes: 1250,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "addBox"),
            BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined), label: "video"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
          ],
        ),
      ),
    );
  }

  // 🔹 Fixed Instagram Post Function
  Widget _buildInstaPost({
    required String userPic,
    required String username,
    required String PostImg,
    required int Likes,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ✅ Profile Picture and Username (Fixed)
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userPic),
                radius: 20,
              ),
              const SizedBox(width: 10),
              Text(
                username,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
               // 3-dot menu
            ],
          ),
        ),

        Image.asset(PostImg, width: double.infinity, fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Row(
            children: [
              const SizedBox(width: 15),
              const Icon(Icons.favorite_border),
              const SizedBox(width: 15),
              const Icon(Icons.comment_outlined),
              const SizedBox(width: 15),
              const Icon(Icons.send),
              const Spacer(),
              const Icon(Icons.bookmark_border),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$Likes likes",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
