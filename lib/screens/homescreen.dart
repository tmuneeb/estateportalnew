import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //selected price range and selected property type
  String selectedPriceRange = "Any";
  String selectedPropertyType = "Any";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height, //height of screen
        width: MediaQuery.of(context).size.width, //width of screen
        padding: const EdgeInsets.only(
          top: 30,
        ), //padding from top left and right
        //background gradient with skyblue and white from top to bottom with white at 65% of screen
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 142, 204, 255),
              Colors.white,
            ],
            stops: [
              0.25,
              1,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              //hello to user and a notifictation icon
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //text with hellow in normal and user in bold and black color
                    Row(
                      children: [
                        Text(
                          "Hello, ",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "User",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
              
                    //icon button with notification icon in black color and a circular shadow of glass color
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //search bar with one full bar on top and two half bar on bottom first one is for location and first on second is for price range and the last one is for type of property
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //search bar with location icon and text field
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 1),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            //location icon
                            Container(
                              height: 50,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.location_on,
                                color: Colors.black,
                              ),
                            ),
              
                            //text field
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Location",
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              
                      //search bar with location icon and text field
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //two drop down button for price range and type of property take care of the selected value and dont overflow
              
                            //price range
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedPriceRange,
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedPriceRange = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Any',
                                    '1,000',
                                    '2,000',
                                    '3,000',
                                    '4,000',
                                    '5,000',
                                    '6,000',
                                    '7,000',
                                    '8,000',
                                    '9,000',
                                    '10,000',
                                    '11,000',
                                    '12,000',
                                    '13,000',
                                    '14,000',
                                    '15,000',
                                    '16,000',
                                    '17,000',
                                    '18,000',
                                    '19,000',
                                    '20,000',
                                    '21,000',
                                    '22,000',
                                    '23,000',
                                    '24,000',
                                    '25,000',
                                    '26,000',
                                    '27,000',
                                    '28,000',
                                    '29,000',
                                    '30,000',
                                    '31,000',
                                    '32,000',
                                    '33,000',
                                    '34,000',
                                    '35,000',
                                    '36,000',
                                    '37,000',
                                    '38,000',
                                    '39,000',
                                    '40,000',
                                    '41,000',
                                    '42,000',
                                    '43,000',
                                    '44,000',
                                    '45,000',
                                    '46,000',
                                    '47,000',
                                    '48,000',
                                    '49,000',
                                    '50,000',
                                    '51,000',
                                    '52,000',
                                    '53,000',
                                    '54,000',
                                    '55,000',
                                    '56,000',
                                    '57,000',
                                    '58,000',
                                    '59,000',
                                    '60,000',
                                    '61,000',
                                    '62,000',
                                    '63,000',
                                    '64,000',
                                    '65,000',
                                    '66,000',
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            //type of property
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedPropertyType,
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedPropertyType = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Any',
                                    'Apartment',
                                    'House',
                                    'Office',
                                    'Villa',
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //heading for the Best Sellers
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Best Sellers",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 56, 35, 102),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        //row with user details and the rewiews with space between set to true
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //user details
                            Row(
                              children: [
                                //user image
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
              
                                const SizedBox(
                                  width: 5,
                                ),
              
                                //user name and location
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //user name
                                    Text(
                                      "John Doe",
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
              
                                    //user location
                                    Text(
                                      "properties sold: 10",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
              
                            //reviews
                            Row(
                              children: [
                                //star icon
                                Container(
                                  height: 16,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    CupertinoIcons.star_fill,
                                    size: 16,
                                    color: Colors.yellow,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
              
                                //rating
                                Text(
                                  "4.5",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
              
                        const SizedBox(
                          height: 20,
                        ),
                        //row with the total groth of the user in percentage and chat and chat icon on other side
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //total growth
                            Row(
                              children: [
                                //growth icon
                                Container(
                                  height: 16,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    CupertinoIcons.arrow_up,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
              
                                //growth percentage
                                Text(
                                  "30%",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
              
                            //chat icon
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Chat",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 197, 222, 152),
                                    ),
                                    child: const Icon(
                                      Icons.message_rounded,
                                      size: 20,
                                      color: Color.fromARGB(255, 56, 35, 102),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
              
                        const SizedBox(
                          height: 10,
                        ),
              
                         
                      ],
                    )),
              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Featured Properties",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //horizontal list view for the featured properties
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),

              //Recently viewed properties
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Recently viewed properties",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //horizontal list view for the featured properties
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
