import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  var height, width;

  List imgData = [
    "images/01.jpg",
    "images/02.jpeg",
    "images/03.jpg",
    "images/04.jpg",
    "images/05.jpg",
    "images/06.jpg",
  ];

  List title = [
    "PT.Galaxy",
    "PT.Tata Surya",
    "PT.Matahari",
    "PT.Bulan",
    "PT.Bintang",
    "PT.Bumi",
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
              color: Colors.blueGrey,
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
                          padding: EdgeInsets.only(
                            top: 35,
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            InkWell(
                              onTap: (){},
                              child: Icon(
                                Icons.sort, 
                                color: Colors.white,
                                size: 40,
                                ),
                            ),
                            Container(
                                height: 50,
                                  width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("images/profil.png"),  
                              ),
                                                            ),
                            ),
                          ],),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dashboard",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 10),
                               Text(
                                "Last Update: 26 Jan 2024",
                                style: TextStyle(
                                  fontSize: 15,
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
                )
              ),
            )
            
          ],
        ),
      ),
    )
    );
  }
}
