import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';
import 'package:messenger_ui/view/discover_screen/discover_brand.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  List<String> brandName = ["Apple", "Samsung", "AirBnb"];
  List<String> brandImage = [apple, samsung, airbnb];
  List<String> AppName = [
    "Microsoft",
    "Instagram",
    "Disney",
    "Facebook",
    "McDonald's"
  ];
  List<String> AppImage = [microsoft, insta, disney, facebook, mcDonalds];
  List<String> AppSubtitle = [
    "Science, Technology & Engineering",
    "Business",
    "Brand",
    "Website",
    "Burget Restaurant Deals"
  ];
  List<String> AppDescription = [
    "Our mission is to empower every person…",
    "Bringing you closer to the people and things you love.",
    "Disney magic right at your fingertips",
    "Welcome to the Facebook chat bot. Use it to get the latest news,and more.",
    "Home of Serving iconic burgers, fries, and happy moments."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundImage: AssetImage(
                profile,
              ),
              radius: 20,
              backgroundColor: black,
            ),
          ),
        ),
        title: Text(
          "Discover",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Search",
                        style: TextStyle(color: Colors.grey, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30,
                    width: 180,
                    decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "FOR YOU",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    )),
                  ),
                  Container(
                    height: 30,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "BUSINESS",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recent",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  DiscoverBrandWidget(image: apple, brandName: "Apple"),
                  SizedBox(
                    width: 20,
                  ),
                  DiscoverBrandWidget(image: samsung, brandName: "Samsung"),
                  SizedBox(
                    width: 20,
                  ),
                  DiscoverBrandWidget(image: airbnb, brandName: "AirBnb")
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "More",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: AppName.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(AppImage[index]),
                        backgroundColor: white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(AppName[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                          SizedBox(
                            width: 300,
                            child: Text(
                              AppSubtitle[index],
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                letterSpacing: 1.2,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: Text(
                              AppDescription[index],
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                letterSpacing: 1,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
