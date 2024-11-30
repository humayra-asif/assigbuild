import 'package:build/detail.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  final List<String> categories = [
    "House",
    "Apartment",
    "Plot",
    "Villa",
    "Studio",
    "Penthouse"
  ];

  final List<Map<String, String>> properties = [
    {
      'url':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3-ign3YSytelqc3_vKEIVvs0ir2uIKMPFEg&s',
      'title': 'Luxury Villa',
      'subtitle': '123 Sunset Blvd, Miami'
    },
    {
      'url':
          'https://st.hzcdn.com/simgs/pictures/exteriors/featured-banglow-in-most-magzines-7wd-7-wonders-designing-institution-pvt-ltd-img~ba7178cb0d09395e_4-5828-1-2b3d164.jpg',
      'title': 'Modern Apartment',
      'subtitle': '45 Elm St, New York'
    },
    {
      'url':
          'https://5.imimg.com/data5/SELLER/Default/2021/6/WM/RC/QQ/129325092/new-product-500x500.jpeg',
      'title': 'Cozy House',
      'subtitle': '78 Pine Ave, San Francisco'
    },
    {
      'url':
          'https://i.pinimg.com/236x/2d/05/a9/2d05a927a51860bb3fb7364b39c94a86.jpg',
      'title': 'Beachfront Home',
      'subtitle': '1 Ocean View, Malibu'
    },
    {
      'url':
          'https://5.imimg.com/data5/SELLER/Default/2021/6/WM/RC/QQ/129325092/new-product-500x500.jpeg',
      'title': 'Stylish Studio',
      'subtitle': '22 Fifth Ave, Chicago'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Los Angeles, CA',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 4, 53, 83),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_border,
                        size: 35,
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
              SizedBox(height: 15),
              Text(
                'Discover Best \nSuitable Property',
                style: TextStyle(
                  color: const Color.fromARGB(255, 4, 53, 83),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 18),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? const Color.fromARGB(255, 4, 53, 83)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.indigo, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Best for you',
                style: TextStyle(
                  color: const Color.fromARGB(255, 4, 53, 83),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: properties.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: item(
                        properties[index]['url']!,
                        properties[index]['title']!,
                        properties[index]['subtitle']!,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10,),
Text('Nearby your location ',style: TextStyle(fontSize: 20),),
SizedBox(height: 8,),
home('https://cf.bstatic.com/xdata/images/hotel/max1024x768/591341678.jpg?k=9295345fd4ab5138a4c44eccb56902ed2cbc0b24dc4e0587178d2174e1928df7&o=&hp=1'),
SizedBox(height: 10,),
home('https://cf.bstatic.com/xdata/images/hotel/max1024x768/591341678.jpg?k=9295345fd4ab5138a4c44eccb56902ed2cbc0b24dc4e0587178d2174e1928df7&o=&hp=1'),

            ],
          ),
        ),
      ),
    );
  }

  Widget item(String url, String first, String second, ) {
    return Container(
      
      height: 350,
      width: 300,
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
                  Text(
                    first,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
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


Widget home(String url) {
  return Container(
    height: 110,
    width: 400,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 227, 227, 227),
      borderRadius: BorderRadius.circular(20),
    ),
    clipBehavior: Clip.hardEdge,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          url,
          height: 130,
          width: 110, 
          fit: BoxFit.cover,
        ),
        Expanded( 
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Text(
                  'RANCH HOME',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 3),
                Text(
                  '520 N Btoudry Ave Los Angeles',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 4),
                Row(
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
        )
      ],
    ),
  );
}

}

