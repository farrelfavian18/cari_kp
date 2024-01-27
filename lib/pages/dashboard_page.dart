import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  var height, width;

  List imgData = [
    "lib/images/01.jpg",
    "lib/images/02.jpg",
    "lib/images/03.jpg",
    "lib/images/04.jpg",
    "lib/images/05.jpg",
    "lib/images/06.jpg",
  ];

  List title = [
    "PT.Ginting Jaya Energi",
    "PT.Agung Cargo",
    "PT.Bukti Asam",
    "PT.Jujur Kinaryo Projo",
    "PT.Sterling Tulus cemerlang",
    "PT.Putra Jaya Wibisono",
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[700],
            //height: height,
            width: width,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  height: height * 0.23,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 35,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.sort,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Text(
                              user.email!,
                              style: const TextStyle(color: Colors.white),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                image: const DecorationImage(
                                  image: AssetImage("lib/images/profil.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
<<<<<<< Updated upstream
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Cari KP",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  ),
                                ),
                                Icon(
                                  Icons.search,
=======
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 30,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dashboard",
                                style: TextStyle(
                                  fontSize: 30,
>>>>>>> Stashed changes
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Tempat Kerja Praktik rekomendasi untuk mu!",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white54,
                                letterSpacing: 1,
                              ),
<<<<<<< Updated upstream
                            )
                          ],
=======
                              SizedBox(height: 10),
                               Text(
                                "Last Update: 26 Jan 2024",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white54,
                                  letterSpacing: 1,
                                ),
                              )
                            ],
                          ),
                        )
                      ],),
              ),
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
               //height: height,
                width: width,
                padding: EdgeInsets.only(bottom: 20),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                      childAspectRatio: 1.1,
                           mainAxisSpacing: 25,
                    ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: imgData.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 6,
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(imgData[index],
                        width: 170,
>>>>>>> Stashed changes
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      //height: height,
                      width: width,
                      padding: EdgeInsets.only(bottom: 20),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
                          mainAxisSpacing: 25,
                        ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: imgData.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 1,
                                      blurRadius: 6,
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    imgData[index],
                                    width: 170,
                                  ),
                                  Text(
                                    title[index],
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      )),
                )
              ],
            ),
          ),
        ));

    // return Scaffold(
    //   body: Center(
    //     child: Text("Log In sebagai: " + user.email!),
    //   ),
    // );
  }
}
