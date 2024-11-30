import 'package:build/wishlist.dart';
import 'package:flutter/material.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Detail', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://st.hzcdn.com/simgs/pictures/exteriors/featured-banglow-in-most-magzines-7wd-7-wonders-designing-institution-pvt-ltd-img~ba7178cb0d09395e_4-5828-1-2b3d164.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CRAFTSMAN HOUSE',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 4, 53, 83),
                          ),
                        ),
                        Text(
                          '520 N Beaudry Ave, Los Angeles',
                          style: TextStyle(fontSize: 13),
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
              ),
              SizedBox(height: 3),
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
              SizedBox(height: 10),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/026/829/465/small_2x/beautiful-girl-with-autumn-leaves-photo.jpg'),
                ),
                title: Text(
                  'Rebecca Tetha',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 4, 53, 83),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Owner Craftsman House',
                  style: TextStyle(fontSize: 10),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: const Color.fromARGB(255, 4, 53, 83)),
                  onPressed: () {},
                ),
              ),
              Text(
                'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garage. Amazing curb appeal and entertain area water views. Tons of built-ins & extras. Read More',
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gallery',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    galleryView(
                        'https://hips.hearstapps.com/hmg-prod/images/barfield-house-tour-gramercy-park-bedroom-jpg-1618419012.jpg?crop=0.668xw:1.00xh;0.167xw,0&resize=1120:*'),
                    SizedBox(width: 15),
                    galleryView(
                        'https://www.bocadolobo.com/en/inspiration-and-ideas/wp-content/uploads/2023/09/Indulge-In-Opulence-50-Luxurious-Bedroom-Decor-Ideas-2-1024x1024.jpeg'),
                    SizedBox(width: 15),
                    /* galleryView(
                        'https://hips.hearstapps.com/hmg-prod/images/ashley-ferguson-interiors-kieran-reeves-photography-2-6638e9080dcfe.jpg?crop=1xw:1xh;center,top&resize=980:*'),
                        SizedBox(height: 15,), */
                        galleryView(
                        'https://hips.hearstapps.com/hmg-prod/images/barfield-house-tour-gramercy-park-bedroom-jpg-1618419012.jpg?crop=0.668xw:1.00xh;0.167xw,0&resize=1120:*'),
                    SizedBox(width: 15),
                    galleryView(
                        'https://www.bocadolobo.com/en/inspiration-and-ideas/wp-content/uploads/2023/09/Indulge-In-Opulence-50-Luxurious-Bedroom-Decor-Ideas-2-1024x1024.jpeg'),
                    SizedBox(width: 15),
                    galleryView(
                        'https://hips.hearstapps.com/hmg-prod/images/ashley-ferguson-interiors-kieran-reeves-photography-2-6638e9080dcfe.jpg?crop=1xw:1xh;center,top&resize=980:*'),
                  ],
                ),
              ),
SizedBox(height: 10,),
Text('Price',style: TextStyle(color: const Color.fromARGB(255, 4, 53, 83),fontSize: 15),),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text('Rs 5990000',style: TextStyle(color: const Color.fromARGB(255, 4, 53, 83),fontSize: 20,fontWeight: FontWeight.bold),),
    ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 4, 53, 83) ),
      onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Listscreen() ));
    }, child: Text('Add to Cart',style: TextStyle(color: Colors.white),))
  ],
)


            ],
          ),
        ),
      ),
    );
  }

  Widget galleryView(String url) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.network(url, fit: BoxFit.cover),
    );
  }
}
