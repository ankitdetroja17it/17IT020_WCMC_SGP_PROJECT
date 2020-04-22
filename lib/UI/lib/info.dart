import 'package:flutter/material.dart';

class infopage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[900],
        // accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
        appBar: AppBar(
          title:
              // GradientAppBar('CHARUSAT'),
              Center(
            child: Text("CHARUSAT"),
          ),
        ),
        // appBar: AppBar(
        //   title: Text("Building layouts"),
        // ),
        body: Text(
            '            The Iron Man of India, Sardar Vallabhbhai Patel believed, “Education without character is futile”. CHARUSAT proudly follows this spirit. It also follows founding High Moral Values like Honesty, Integrity, Transparency, Fairness, Equity, and Accountability. CHARUSAT-one of the best university of Gujarat, offers 72 programs ranging from Undergraduate to Doctoral (PhD) under the tutelage of 9 Institutes, 6 Faculties, various Centers / Cells. An employee strength of 550, student strength of more than 7500 and a Capital Outlay of INR 150 Crores are the scalar dimensions of CHARUSAT. The programs are offered in the allied disciplines of Technology & Engineering, Pharmacy, Computer Applications, Management Studies, Applied Sciences, Nursing, Physiotherapy, and other Paramedical Sciences. Established in 2000, Chandubhai S Patel Institute of Technology (CSPIT), Anand is a leading University College college based in Anand.The college is popularly known as CSPIT among the students.The institute offers a wide array of academic courses and programmes that are approved by AICTE.The college, affiliated to Charotar University of Science & Technology, Anand , is widely recognized for its academic standards. Chandubhai S Patel Institute of Technology (CSPIT), Anand takes a holistic view of education and focuses on both, academic as well as personality development of the students. The qualified and experienced faculty at CSPIT along with the carefully designed and updated curriculum ensure that the students receive the best education and skills which can help them emerge as qualified professionals.',
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
            maxLines: 30,
            style: TextStyle(
                color: Colors.black,
                // fontWeight: FontWeight.bold,
                fontSize: 16.0)),
      ),
    );
  }
}

class comingsoonpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        // GradientAppBar('CHARUSAT'),
        Center(child: Text("CHARUSAT"),),
      ),
      // // appBar: AppBar(
      // //   title: Text("Building layouts"),
      // // ),
      // body: Text( 'Coming Soon',
      //   textAlign: TextAlign.justify,
      //   overflow: TextOverflow.ellipsis,
      //   maxLines: 30,
      //   style: TextStyle(
      //                   color: Colors.black,
      //                   // fontWeight: FontWeight.bold,
      //                   fontSize: 16.0)
      // ),
      body: ListView(
        children: <Widget>[
          Container(
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [Color.fromRGBO(1, 89, 99, 1.0), Colors.grey],
            //     begin: Alignment.bottomLeft,
            //     end: Alignment.topRight,
            //   ),
            // ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 200.0, bottom: 10.0),
                    child: Text("COMING SOON...",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                  ),
                ],
              ),
            ),
            //here
          ),
        ],
      ),
    );
  }
}
