import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hotel Title"),
              background: Image.network(
                "https://www.calliaweb.co.uk/wp-content/uploads/2015/10/600x400.jpg",
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Nestled along the sun-kissed coastline, Oceanview Grand Resort offers an unforgettable blend of luxury, relaxation, and world-class hospitality. "
                  "From the moment you step through the grand, marble-clad lobby, you are welcomed by warm smiles, soothing sea breezes, and an ambiance that reflects both modern sophistication and timeless charm. "
                  "Our elegantly designed rooms and suites, each featuring floor-to-ceiling windows, invite you to wake up to breathtaking panoramic views of the turquoise ocean or the vibrant city skyline. "
                  "Every room is equipped with plush bedding, high-speed Wi-Fi, smart entertainment systems, and a spacious work desk, ensuring both leisure and business travelers enjoy the utmost convenience. "
                  "Private balconies allow you to savor your morning coffee while watching the sunrise or unwind with a glass of wine at sunset. "
                  "Dining at Oceanview Grand is an experience in itself. Guests can indulge in gourmet international cuisine at Azure Bay Restaurant, enjoy fresh seafood specialties at The Coral Grill, or sip handcrafted cocktails at our Skyline Rooftop Bar while watching the waves roll in. "
                  "For a more intimate setting, in-room dining is available 24/7, allowing you to enjoy your meal in complete privacy.",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "More Images",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                height: 200.0,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Image.network(
                      "https://placehold.co/200x150",
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
