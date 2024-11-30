import 'package:build/detail.dart';
import 'package:build/home.dart';
import 'package:flutter/material.dart';

class Listscreen extends StatefulWidget {
  const Listscreen({super.key});

  @override
  State<Listscreen> createState() => _ListscreenState();
}

class _ListscreenState extends State<Listscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Wishlist'),
      actions: [
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Homescreen()));
          },
        ),
      ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            item(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3-ign3YSytelqc3_vKEIVvs0ir2uIKMPFEg&s',
          'Luxury Villa',
           '123 Sunset Blvd, Miami'),
           
           item(
            'https://i.pinimg.com/236x/2d/05/a9/2d05a927a51860bb3fb7364b39c94a86.jpg',
         'Beachfront Home',
        '1 Ocean View, Malibu')
          ],
        ),
      ),
    ),
    );
  }

  Widget item(String url, String first, String second, ) {
    return Container(
      
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 4, 53, 83),
        borderRadius: BorderRadius.circular(25),
      ),
      clipBehavior: Clip.hardEdge,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Detailscreen()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        first,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_border,
                        size: 30,
                        color: const Color.fromARGB(255, 4, 53, 83),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 234, 234, 234),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    second,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.bed_outlined, color: Colors.amber),
                      Text('4 Beds', style: TextStyle(color: Colors.grey)),
                      Icon(Icons.bathtub_sharp, color: Colors.amber),
                      Text('4 Baths', style: TextStyle(color: Colors.grey)),
                      Icon(Icons.car_rental, color: Colors.amber),
                      Text('1 Garage', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



}