// Story.dart

import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                /// TOP BAR
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      padding: const EdgeInsets.all(10),

                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius:
                        BorderRadius.circular(14),
                      ),

                      child: const Icon(
                        Icons.menu,
                        color: Color(0xff7B5CFF),
                      ),
                    ),

                    Row(
                      children: [

                        Container(
                          padding: const EdgeInsets.all(10),

                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade200,
                            ),
                          ),

                          child: const Icon(
                            Icons.notifications_none,
                            color: Color(0xff7B5CFF),
                          ),
                        ),

                        const SizedBox(width: 12),

                        CircleAvatar(
                          radius: 24,
                          backgroundColor:
                          Colors.orange.shade200,

                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// HELLO
                const Text(
                  "Hello, Alex!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  "Enjoy your story time",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                ),

                const SizedBox(height: 22),

                /// SEARCH BAR
                Container(
                  height: 55,

                  padding:
                  const EdgeInsets.symmetric(horizontal: 15),

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius:
                    BorderRadius.circular(18),

                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                  ),

                  child: Row(
                    children: [

                      Icon(
                        Icons.search,
                        color: Colors.grey.shade500,
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,

                            hintText:
                            "Search stories, categories...",

                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),

                      Icon(
                        Icons.search,
                        color: Colors.grey.shade500,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 22),

                /// BANNER
                Container(
                  height: 210,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(24),

                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff6D4CFF),
                        Color(0xff9D7BFF),
                      ],
                    ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      children: [

                        
Expanded(
  child: Column(
    crossAxisAlignment:
    CrossAxisAlignment.start,

    mainAxisAlignment:
    MainAxisAlignment.center,

    children: [

      const Flexible(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,

          child: Text(
            "The Adventure\nBegins!",

            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      const SizedBox(height: 8),

      Text(
        "Dive into magical\nworlds and fun\nstories.",

        style: TextStyle(
          color: Colors.white.withOpacity(.85),
          fontSize: 13,
        ),
      ),

      const SizedBox(height: 12),

      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 9,
        ),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius:
          BorderRadius.circular(14),
        ),

        child: const Text(
          "Explore Now",

          style: TextStyle(
            color: Color(0xff6D4CFF),
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
    ],
  ),
),

                        /// IMAGE
                        Container(
                          height: 170,
                          width: 140,

                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(22),

                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/premium-vector/cute-little-boy-reading-book-cartoon_96037-454.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                /// DOTS
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [

                    Container(
                      height: 8,
                      width: 8,

                      decoration: const BoxDecoration(
                        color: Color(0xff6D4CFF),
                        shape: BoxShape.circle,
                      ),
                    ),

                    const SizedBox(width: 6),

                    Container(
                      height: 8,
                      width: 8,

                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                      ),
                    ),

                    const SizedBox(width: 6),

                    Container(
                      height: 8,
                      width: 8,

                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                /// CATEGORY TITLE
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 18),

                /// CATEGORIES
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,

                  children: const [

                    CategoryItem(
                      icon: Icons.castle,
                      color: Colors.pink,
                      title: "Fairy Tales",
                    ),

                    CategoryItem(
                      icon: Icons.pets,
                      color: Colors.orange,
                      title: "Animal Stories",
                    ),

                    CategoryItem(
                      icon: Icons.star,
                      color: Colors.amber,
                      title: "Moral Stories",
                    ),

                    CategoryItem(
                      icon: Icons.rocket_launch,
                      color: Colors.blue,
                      title: "Adventure",
                    ),

                    CategoryItem(
                      icon: Icons.nightlight_round,
                      color: Colors.deepPurple,
                      title: "Bedtime",
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                /// TOP STORIES TITLE
                const Text(
                  "Top Stories",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                /// TABS
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      children: [

                        const Text(
                          "Popular",
                          style: TextStyle(
                            color: Color(0xff6D4CFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Container(
                          height: 3,
                          width: 55,

                          decoration: BoxDecoration(
                            color:
                            const Color(0xff6D4CFF),

                            borderRadius:
                            BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),

                    Text(
                      "New Stories",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),

                    Text(
                      "Trending",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),

                    Text(
                      "Recommended",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// STORY CARDS
                const StoryCard(
                  image:
                  "https://img.freepik.com/premium-vector/cute-lion-cartoon-forest_29190-5475.jpg",

                  title: "The Brave Lion",

                  subtitle:
                  "A brave lion who saves\nthe forest from danger.",

                  rating: "4.8",
                ),

                const SizedBox(height: 18),

                const StoryCard(
                  image:
                  "https://img.freepik.com/premium-vector/cute-mermaid-cartoon_96037-466.jpg",

                  title: "The Little Mermaid",

                  subtitle:
                  "A mermaid's dream to\nexplore the world above.",

                  rating: "4.9",
                ),

                const SizedBox(height: 18),

                const StoryCard(
                  image:
                  "https://img.freepik.com/premium-vector/cartoon-big-tree_29190-4575.jpg",

                  title: "The Magical Tree",

                  subtitle:
                  "A tree that grants wishes\nto those in need.",

                  rating: "4.7",
                ),

                const SizedBox(height: 24),

                /// BUTTON
                Container(
                  height: 58,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(18),

                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff6D4CFF),
                        Color(0xff9D7BFF),
                      ],
                    ),
                  ),

                  child: const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.menu_book,
                        color: Colors.white,
                      ),

                      SizedBox(width: 10),

                      Text(
                        "View All Stories",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// CATEGORY ITEM
class CategoryItem extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String title;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62,

      child: Column(
        children: [

          Container(
            height: 58,
            width: 58,

            decoration: BoxDecoration(
              color: color.withOpacity(.15),

              borderRadius:
              BorderRadius.circular(18),
            ),

            child: Icon(
              icon,
              color: color,
              size: 30,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            title,
            textAlign: TextAlign.center,

            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

/// STORY CARD
class StoryCard extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;
  final String rating;

  const StoryCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
        BorderRadius.circular(20),

        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),

      child: Row(
        children: [

          /// IMAGE
          ClipRRect(
            borderRadius:
            BorderRadius.circular(16),

            child: Image.network(
              image,
              height: 95,
              width: 95,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 14),

          /// TEXT
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [

                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),

                    const SizedBox(width: 5),

                    Text(
                      rating,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// HEART
          const Align(
            alignment: Alignment.topCenter,
            child: Icon(
              Icons.favorite_border,
              color: Colors.pink,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}