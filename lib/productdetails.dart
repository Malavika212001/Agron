// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
//import firestore
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductDetails extends StatefulWidget {
  //get docid
   String docid;
   ProductDetails( {super.key, required this.docid});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body:Container(
      width: double.infinity,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF013220), Colors.black, Colors.white.withOpacity(0)],
    ),
  ),
child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
           Padding(
           padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('lib/Images/logo message.png'),
                    Text(
                    'Agron',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Sedgwick Ave Display',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              children: [
                Text(
                  'Product Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Sedgwick Ave Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25,),
          //display name,detail,price,image,harvesttime,availability from collection product according to the index of the product from the database in editable fromat
          StreamBuilder(
            stream: FirebaseFirestore.instance.collection('product').doc(widget.docid).snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              var product = snapshot.data;
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      children: [
                        Text(
                          'Name: ${product?['name']}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      children: [
                        Text(
                          'Detail: ${product?['detail']}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      children: [
                        Text(
                          'Price: ${product?['price']}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Row(
                        children: [
                          product?['image'] != null
                              ? Image.network(
                                  product?['image'],
                                  fit: BoxFit.cover,
                                )
                              : Text(
                                  'No image available',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      children: [
                        Text(
                          'Harvest Time: ${product?['harvesttime']}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                    ),)]
    ),
    ),
    const SizedBox(height: 15,),
  //gesture detector to delete doc
  GestureDetector(
    child: Container(
      height: 84,width: 300,
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin:  const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        ),
      child:  const Center(
        child: Text(
          'Delete',
          style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20
          ),
        ),
      ),
    ),
    onTap:() {
      FirebaseFirestore.instance.collection('product').doc(widget.docid).delete();
      Navigator.pop(context);
    },
    ),
        ],
        );
    }
    ),
    ],
    
    
    ),
    ),
    ),
    );
    }
}