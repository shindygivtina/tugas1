import 'package:flutter/material.dart';
// ignore: unused_import
import './detail_produk.dart';

// ignore: camel_case_types
class produklist extends StatelessWidget {
  const produklist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const DetailProduk(
                  name: "Vivo",
                  description:
                      "Asus Vivo laptop yang canggih ",
                  price: 30100000,
                  image: "laptop1.jpg",
                  star: 5,
                ),
              ));
            },
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "Vivo",
              description: "Ini Laptop Asus Vivo  ",
              price: 30100000,
              image: "laptop1.jpg",
              star: 5,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Acer",
                      description:
                          " Acer adalah laptop canggih",
                      price: 2500000,
                      image: "laptop2.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "Acer",
                description: " Ini Adalah Laptop Acer",
                price: 2500000,
                image: "laptop2.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "McBook",
                      description:
                          "Mcbook adalah laptop canggih",
                      price: 17500000,
                      image: "laptop3.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "McBook",
                description: "Ini Adalah Laptop Mcbook",
                price: 15500000,
                image: "laptop3.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Hp",
                      description:
                          "Ini adalah laptop hp canggih",
                      price: 1000000,
                      image: "laptop4.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Hp",
                description: "Ini Adalah Hp Asus Rog Pho",
                price: 10500000,
                image: "laptop4.jpg",
                star: 5),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Samsung",
                      description:
                          "Ini adalah laptop samsung yang canggih",
                      price: 8500000,
                      image: "laptop.jpg",
                      star: 2),
                ),
              );
            },
            child: ProductBox(
                name: "Samsung",
                description: "Ini Adalah Laptop Samsung",
                price: 8500000,
                image: "laptop.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
