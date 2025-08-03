List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code':"NYC",
      'name':"New-York"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time':"08:00 AM",
    "number":23
  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45
  },
  {
    'from': {
      'code':"SL",
      'name':"Srilanka"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '9H 45M',
    'date': "10 AUG",
    'departure_time':"05:00 AM",
    "number":18
  },
  {
    'from': {
      'code':"LDN",
      'name':"London"
    },
    'to': {
      'code':"LK",
      'name':"Sri Lanka"
    },
    'flying_time': '9H 45M',
    'date': "12 AUG",
    'departure_time':"05:00 PM",
    "number":07
  },
  {
    'from': {
      'code':"LDN",
      'name':"London"
    },
    'to': {
      'code':"US",
      'name':"America"
    },
    'flying_time': '6H 00M',
    'date': "25 MAY",
    'departure_time':"09:00 AM",
    "number":33
  },
  {
    'from': {
      'code':"US",
      'name':"Amerika"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '6H 00M',
    'date': "25 MAY",
    'departure_time':"09:00 AM",
    "number":33
  },
];

class AppRoutes{

  static const homePage = "/";

  static const allTickets = "all_tickets";

  static const ticketScreen = "ticket_screen";

  static const allHotels = "all_hotels";

  static const hotelDetail = "hotel_detail";

}

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    'image': 'city_view.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40
  },
  {
    'image': 'pool_view.png',
    'place': 'Best city Pool',
    'destination': 'Dubai',
    'price': 68
  },
];