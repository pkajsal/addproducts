import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // // floatingActionButton: FloatingActionButton(
      // //   onPressed: (){},
      // //   child: Icon(Icons.g_mobiledata_rounded
      //
      //   ),
      // ),
      backgroundColor: Colors.white54,
      body: Stack(
          children: [
            Text(
              "LOGIN",
              style: TextStyle(color: Colors.black),
            ),
            Container(
              child: Image.asset(
                "images/bw1.jpg",
                height: 500,
                width: 1000,
                fit: BoxFit.fitWidth,
              ),
            ),

            
            Align(
              alignment: Alignment.center,
              child: Container(

                height: 350,
                width: 350,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),

                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Forgot Password?",textAlign: TextAlign.right,),
                    SizedBox(height: 25,),
                    Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {

                            },
                            child: Text("Log in"),
                            style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 20.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0))))),
                  ],
                ),
              ),
            ),

          ],
        ),

    );
  }
}
