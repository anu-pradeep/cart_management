import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatefulWidget {
  const CartCard({
    super.key,
    required this.images,
    required this.productname,
    required this.productdetails,
    required this.productrate,
    required this.onAddToCart, // Add this line
  });

  final String images;
  final String productname;
  final String productdetails;
  final String productrate;
  final VoidCallback onAddToCart; // Add this line

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
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
              child: Image(
                image: NetworkImage(widget.images),
                height: 100,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 5),
              Text(
                widget.productname,
                style: GoogleFonts.abyssinicaSil(
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                    color: Colors.red[900]),
              ),
              const SizedBox(height: 10),
              Text(
                widget.productdetails,
                style: GoogleFonts.abyssinicaSil(
                    fontSize: 11, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  right: 250,
                ),
                child: Text(
                  widget.productrate,
                  style: GoogleFonts.abyssinicaSil(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 08, bottom: 08, left: 40),
                child: ElevatedButton(
                  onPressed: widget.onAddToCart, // Use the callback here
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      backgroundColor: Colors.red[100]),
                  child: Text(
                    "ADD TO CART",
                    style: GoogleFonts.abyssinicaSil(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
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
