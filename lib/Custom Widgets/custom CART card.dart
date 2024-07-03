// custom_cart_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
    required this.images,
    required this.productname,
    required this.productdetails,
    required this.productrate,
    required this.onAddToCart,
  });

  final String images;
  final String productname;
  final String productdetails;
  final String productrate;
  final VoidCallback onAddToCart;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[50],
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                images,
                height: 100,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  productname,
                  style: GoogleFonts.abyssinicaSil(
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                      color: Colors.red[900]),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                productdetails,
                style: GoogleFonts.abyssinicaSil(
                    fontSize: 11, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  productrate,
                  style: GoogleFonts.abyssinicaSil(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 160,
                ),
                child: ElevatedButton(
                  onPressed: onAddToCart,
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      backgroundColor: Colors.red[100]),
                  child: Text(
                    "ADD TO CART",
                    style: GoogleFonts.abyssinicaSil(
                        fontWeight: FontWeight.w500,
                        color: Colors.red[800],
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
