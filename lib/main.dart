import 'package:flutter/material.dart';

void main(){
  runApp(BookApp());
}

class BookApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'AVI',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.teal.shade800,
          secondary: Colors.teal.shade300,
          // tertiary: Colors.teal.shade100,
        ),
        textTheme: TextTheme(

        )
      ),
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=> HomePageState();
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade50,
        foregroundColor: Colors.teal.shade800,
        title: Text("AVI",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            BookCard(title: "Lord of the Rings", author: "J. R. R. Tolkien", imagePath: "assets/Lord_of_the_Rings.png", price: "2000"),
            BookCard(title: "Jane Eyre", author: "Charlotte Brontë", imagePath: "assets/Jane_Eyer.png", price: "1500"),
            BookCard(title: "War and Peace", author: "Leo Tolstoy", imagePath: "assets/war_and_peace.png", price: "500"),
          ],
        ),
      ),

    );
  }
}



class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final String price;

  BookCard({
    required this.title,
    required this.author,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.black12),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.teal.shade800,
              ),
            ),
            subtitle: Text(
              author,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Image(image: AssetImage(imagePath)),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade800,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade800,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text('Add to Cart'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
