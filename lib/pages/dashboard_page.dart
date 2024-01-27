import 'package:cari_kp/pages/navbar_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  var height, width;

  List imgData = [
    "lib/images/01.jpg",
    "lib/images/02.jpg",
    "lib/images/03.jpg",
    "lib/images/04.jpg",
    "lib/images/05.jpg",
    "lib/images/06.jpg",
    "lib/images/07.jpg",
    "lib/images/08.jpg",
  ];

  List title = [
    "PT.Ginting Jaya Energi",
    "PT.Agung Cargo",
    "PT.Bukti Asam",
    "PT.Jujur Kinaryo Projo",
    "PT.Sterling Tulus cemerlang",
    "PT.Putra Jaya Wibisono",
    "PT.Sriwijaya Air",
    "PT.Garuda",
  ];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     actions: [
    //       IconButton(
    //         onPressed: signOutUser,
    //         icon: Icon(Icons.logout_outlined),
    //       )
    //     ],
    //   ),
    //   body: Center(child: Text("Logged In: " + user.email!)),
    // );

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        //test app bar
        drawer: NavBarPage(),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: signOutUser, icon: Icon(Icons.logout_outlined))
          ],
        ),
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
                            // InkWell(
                            //   onTap: () {},
                            //   child: const Icon(
                            //     Icons.sort,
                            //     color: Colors.white,
                            //     size: 40,
                            //   ),
                            // ),
                            Text("Selamat datang, " + user.email!,
                                style: TextStyle(color: Colors.white)),

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
                      ),
                      const Padding(
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
                                color: Colors.white70,
                                letterSpacing: 1,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      //height: height,
                      width: width,
                      padding: EdgeInsets.only(bottom: 20),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
                          mainAxisSpacing: 25,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: imgData.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: const [
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
                                    style: const TextStyle(
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
