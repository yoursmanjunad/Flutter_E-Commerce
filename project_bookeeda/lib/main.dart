import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
  void main() => runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'New Releases';
  // or any initial category
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookeeda"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Banner
            Container(
              margin: EdgeInsets.all(10),
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/book_images/ArtofOverthinking.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Categories Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem(
                    title: "New Releases",
                    isActive:
                        selectedCategory == "New Releases", // Update this line
                    onTap: () {
                      setState(() {
                        selectedCategory = "New Releases";
                      });
                    },
                  ),
                  CategoryItem(
                    title: "Best Selling",
                    isActive:
                        selectedCategory == "Best Selling", // Update this line
                    onTap: () {
                      setState(() {
                        selectedCategory = "Best Selling";
                      });
                    },
                  ),
                  CategoryItem(
                    title: "Most Rated",
                    isActive:
                        selectedCategory == "Most Rated", // Update this line
                    onTap: () {
                      setState(() {
                        selectedCategory = "Most Rated";
                      });
                    },
                  ),
                  CategoryItem(
                    title: "Sci-Fi",
                    isActive: selectedCategory == "Sci-Fi", // Update this line
                    onTap: () {
                      setState(() {
                        selectedCategory = "Sci-Fi";
                      });
                    },
                  ),
                  CategoryItem(
                    title: "Romance",
                    isActive: selectedCategory == "Romance", // Update this line
                    onTap: () {
                      setState(() {
                        selectedCategory = "Romance";
                      });
                    },
                  ),
                  CategoryItem(
                    title: "Biography",
                    isActive:
                        selectedCategory == "Biography", // Update this line
                    onTap: () {
                      setState(() {
                        selectedCategory = "Biography";
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            // Products Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Text(
                "Popular Products",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 12, // Number of products
              itemBuilder: (context, index) {
                return ProductItem(
                  title: "Product $index",
                  price: "\$${(index + 1) * 20}",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatefulWidget {
  final String title;
  final bool isActive;
  final VoidCallback? onTap;

  CategoryItem({
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.isActive ? Colors.red : Colors.white, // Active color
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1.2,
            color: widget.isActive
                ? Colors.redAccent
                : Colors.black, // Border color
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color:
                  widget.isActive ? Colors.white : Colors.black, // Text color
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  String selectedCategory = 'Bestseller'; // Initially selected category

  final List<String> categories = [
    'Bestseller',
    'New Arrivals',
    'Top Rated',
    'Discounts'
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: categories.map((category) {
        return CategoryItem(
          title: category,
          isActive: selectedCategory == category,
          onTap: () {
            setState(() {
              selectedCategory = category; // Update selected category
            });
          },
        );
      }).toList(),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String price;

  ProductItem({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_bag, size: 50, color: Colors.grey),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 16)),
          SizedBox(height: 5),
          Text(price,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
