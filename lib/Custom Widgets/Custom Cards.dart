import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsCustomized extends StatelessWidget {
  const CardsCustomized({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            border: const Border(top: BorderSide(color: Colors.red, width: 05)),
            color: Colors.blue[50]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 330, top: 10),
              child: Text(
                "Customer Details",
                style: GoogleFonts.abyssinicaSil(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: NetworkImage(
                      "data:image/jpeg;base64,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"),
                  height: 100,
                ),
              ),
              title: Text(
                "Mike Grand",
                style: GoogleFonts.abyssinicaSil(fontWeight: FontWeight.w600),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Customer",
                    style: GoogleFonts.abyssinicaSil(
                        color: Colors.grey, fontSize: 13),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Text(
                    "+919645102999",
                    style: GoogleFonts.abyssinicaSil(color: Colors.grey),
                  ),
                ],
              ),
              trailing: const Padding(
                  padding: EdgeInsets.only(top: 13),
                  child: Image(
                      image: NetworkImage(
                          "data:image/jpeg;base64,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"))),
            ),
            ListTile(
              leading: Icon(
                Icons.location_on_rounded,
                color: Colors.red[800],
              ),
              title: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Baker Street",
                        style: GoogleFonts.abyssinicaSil(
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "221b Baker st,",
                        style: GoogleFonts.abyssinicaSil(
                            color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 170, top: 14),
                    child: Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.cyan,
                      size: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 08, top: 14),
                    child: Text(
                      "Get Direction",
                      style: GoogleFonts.abyssinicaSil(
                          color: Colors.cyan, fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Text(
                    "Marylone,London",
                    style: GoogleFonts.abyssinicaSil(
                        fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.calendar_month,
                    color: Colors.red[800],
                    size: 18,
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  Text(
                    "12.09 PM 10 May,24",
                    style: GoogleFonts.abyssinicaSil(
                        color: Colors.grey, fontSize: 13),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.edit_note_sharp,
                    color: Colors.cyan,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(right: 330),
              child: Text(
                "Customer Details",
                style: GoogleFonts.abyssinicaSil(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 05,
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: NetworkImage(
                      "data:image/jpeg;base64,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"),
                  height: 60,
                ),
              ),
              title: Text(
                "AC Installation and demo requests",
                style: GoogleFonts.abyssinicaSil(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                "Reference Code: #JBD6354",
                style: GoogleFonts.abyssinicaSil(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 05,
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYnt0TTyrSbRf3o7P1c8IxkWzSG6ZxkA__ag&s"),
                  height: 60,
                  width: 50,
                ),
              ),
              title: Text(
                "Air Conditioner",
                style: GoogleFonts.abyssinicaSil(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Convertible 5in1 Inverter Split ac",
                style: GoogleFonts.abyssinicaSil(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 05,
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: NetworkImage(
                      "data:image/jpeg;base64,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"),
                  height: 60,
                  width: 50,
                ),
              ),
              title: Text(
                "Eham Digital",
                style: GoogleFonts.abyssinicaSil(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Dealer",
                style: GoogleFonts.abyssinicaSil(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: const Size(400, 50)),
                child: Text(
                  "IN PROGRESS",
                  style: GoogleFonts.abyssinicaSil(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
