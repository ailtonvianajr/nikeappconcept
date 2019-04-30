import 'package:flutter/material.dart';
import 'package:flutter_layout_performance/entities/Shoes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: body(),
    );
  }

  final List<Shoes> shoes = [
    Shoes(number: 90, color: Colors.red, image: "http://pluspng.com/img-png/nike-shoe-png-nike-tanjun-women-s-shoe-nike-com-nike-shoe-png-400.png", description: "Air Max 90 EZ Black", fromPrice: 299.0, toPrice: 149.0),
    Shoes(number: 270, color: Colors.blueGrey, image: "http://images3.nike.com/is/image/DotCom/PHN_PS/849971_100_C_PREM/lunar-control-vapor-mens-golf-shoe.png?fmt=png-alpha", description: "Air Max 90 EZ Black", fromPrice: 299.0, toPrice: 149.0),
    Shoes(number: 190, color: Colors.grey, image: "https://i.ya-webdesign.com//images/cool-shoes-png.png", description: "Air Max 90 EZ Black", fromPrice: 299.0, toPrice: 149.0),
    Shoes(number: 120, color: Colors.amber, image: "https://i.ya-webdesign.com//images/cool-shoes-png-10.png", description: "Air Max 90 EZ Black", fromPrice: 299.0, toPrice: 149.0),
  ];
  
  Widget appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Container(
        width: 40.0,
        height: 40.0,
        child: Image.network(
          'http://pngimg.com/uploads/nike/nike_PNG11.png',
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  Widget body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          return cardShoes(shoes[index]);
        },
      ),
    );
  }
  
  Widget cardShoes(Shoes shoes) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        height: 400.0,
        decoration: BoxDecoration(
          color: shoes.color.withOpacity(0.09),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Text(
                  shoes.number.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 170.0,
                    color: shoes.color.withOpacity(0.1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 260.0,
                  child: Image.network(
                    shoes.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Text(
              shoes.description,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "S${shoes.fromPrice.toString()}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      "S${shoes.toPrice.toString()}",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
