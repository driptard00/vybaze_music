import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppStateController extends GetxController {

  int _selectedScreenIndex = 0;
  bool _showForm = false;
  bool _showForm2 = false;
  bool _checkBox = false;
  bool _checkBox2 = false;
  final List<String> _info = [
    "Let's vibe to something cool today",
    "Play something fresh today oh!!!",
    "What's going to be the vibe today",
    "Smooth and chill music no go sad oh!!!",
  ];

  final List<Map<String, dynamic>> _albums = [
    {
      "type": "album",
      "albumName": "Breezy",
      "artistName": "Chris Brown",
      "albumPhoto": "lib/img/breezy.jfif",
      "songs": [
        {
          "name": "Kriss Kross",
          "artists": "Chris Brown, Tank, Gunna"
        },
        {
          "name": "Bad Sex",
          "artists": "Chris Brown, Jack harlow"
        },
        {
          "name": "Bounce",
          "artists": "Chris Brown"
        },
        {
          "name": "Forgiven",
          "artists": "Chris Brown"
        },
        {
          "name": "Kindness for weakness",
          "artists": "Chris Brown, Giveon"
        },
        {
          "name": "Kindness for weakness",
          "artists": "Chris Brown, Giveon"
        },
        {
          "name": "Kindness for weakness",
          "artists": "Chris Brown, Giveon"
        },
        {
          "name": "Kindness for weakness",
          "artists": "Chris Brown, Giveon"
        },      
        {
          "name": "Kindness for weakness",
          "artists": "Chris Brown, Giveon"
        },        
        {
          "name": "Kindness for weakness",
          "artists": "Chris Brown, Giveon"
        },       
         {
          "name": "Kindness for weakness",
          "artists": "Chris Brown, Giveon"
        },
      ]
    },
    {
      "type": "album",
      "albumName": "Mr. morales ",
      "artistName": "Kendrick Lamar",
      "albumPhoto": "lib/img/N95.jfif",
      "songs": [
        {
          "name": "B. O. Bean",
          "artists": "Kendrick Lamar"
        },
        {
          "name": "Greatness",
          "artists": "Kendrick Lamar, Headie one"
        },
        {
          "name": "Toosie",
          "artists": "Kendrick Lamar"
        },
        {
          "name": "Strings",
          "artists": "Kendrick Lamar"
        },
        {
          "name": "Darkness to dust",
          "artists": "Kendrick Lamar"
        },
      ]
    },
    {
      "type": "album",
      "albumName": "The Heart",
      "artistName": "Kendrick Lamar",
      "albumPhoto": "lib/img/the heart.jfif",
      "songs": [
        {
          "name": "Cali",
          "artists": "Kendrick Lamar, Tank, Gunna"
        },
        {
          "name": "Cash Money",
          "artists": "Kendrick Lamar"
        },
        {
          "name": "Play with me",
          "artists": "Kendrick Lamar, Nle Choppa"
        },
        {
          "name": "Drive Thru",
          "artists": "Kendrick Lamar, Roddy Ricch"
        },
        {
          "name": "Hatin",
          "artists": "Kendrick Lamar"
        },
      ]
    },
    {
      "type": "album",
      "albumName": "Indigo",
      "artistName": "Chris Brown",
      "albumPhoto": "lib/img/indigo.jfif",
      "songs": [
        {
          "name": "Kriss Kross",
          "artists": "Chris Brown, Tank, Gunna"
        },
        {
          "name": "Bad Sex",
          "artists": "Chris Brown, Jack harlow"
        },
        {
          "name": "Bounce",
          "artists": "Chris Brown"
        },
        {
          "name": "Forgiven",
          "artists": "Chris Brown"
        },
        {
          "name": "Kindness for weakness",
          "artists": "Chris Brown, Giveon"
        },
      ]
    },
  ];

  final List<Map<String, dynamic>> _songs = [
  {
    'title': "Skelewu - Remix",
    'artists': "Davido, Chris Brown",
  },
  {
    'title': "No Guidiance",
    'artists': "Drake, Chris Brown",
  },
  {
    'title': "Adventure of a lifetime",
    'artists': "Coldplay",
  },
  {
    'title': "Passion fruit",
    'artists': "Drake",
  },
  {
    'title': "Don't forget",
    'artists': "Lil Yatchy",
  },
  {
    'title': "Bad guy",
    'artists': "Billie Ellish",
  },
  {
    'title': "Best Friend",
    'artists': "Young Thug",
  },
  {
    'title': "PeepHole",
    'artists': "Dababy",
  },
];

//   final List<Map<String, dynamic>> _artists = [
//   {
//     "photoUrl": "lib/img/chrisbrown.png",
//     "artistName": "Chris Brown"
//   },
//   {
//     "photoUrl": "lib/img/kid cudi.webp",
//     "artistName": "Kid Cudi"
//   },
//   {
//     "photoUrl": "lib/img/dojacat.webp",
//     "artistName": "Doja Cat"
//   },
//   {
//     "photoUrl": "lib/img/kendrick.webp",
//     "artistName": "Kendrick Lamar"
//   },
//   {
//     "photoUrl": "lib/img/cardi b.jfif",
//     "artistName": "Cardi B"
//   },
// ];
// final List<Map<String, dynamic>> _trending = [
//     {
//       "photoUrl": "lib/img/indigo.jfif",
//       "trendingMusic": "Indigo",
//       "artistName": "Chris Brown"
//     },
//     {
//       "photoUrl": "lib/img/N95.jfif",
//       "trendingMusic": "N95",
//       "artistName": "Kendrick Lamar"
//     },
//     {
//       "photoUrl": "lib/img/the heart.jfif",
//       "trendingMusic": "The heart part 5",
//       "artistName": "Kendrick lamar"
//     },
//     {
//       "photoUrl": "lib/img/standstrong.jfif",
//       "trendingMusic": "Stand strong",
//       "artistName": "Davido"
//     },
//     {
//       "photoUrl": "lib/img/breezy.jfif",
//       "trendingMusic": "Breezy",
//       "artistName": "Chris Brown"
//     },
//   ];

  // final List<Map<String, dynamic>> _newReleases = [
  //   {
  //     "title": "Escape Plan",
  //     "artistName": "Travis scott"
  //   },
  //   {
  //     "title": "Rock my world",
  //     "artistName": "Micheal jackson"
  //   },
  // {
  //     "title": "Reckless love",
  //     "artistName": "Cory Asbury"
  //   },
  //       {
  //     "title": "Fountains",
  //     "artistName": "Drake"
  //   },
  //       {
  //     "title": "A day with Will Smith",
  //     "artistName": "Will Smith"
  //   },
  // ];

  //   final List<Map<String, dynamic>> _recentlyPlayed = [
  //   {
  //     "title": "Rich Spirit",
  //     "artistName": "Kendrick Lamar"
  //   },
  //   {
  //     "title": "Faith",
  //     "artistName": "Pop Smoke"
  //   },
  // {
  //     "title": "Grass aint greener",
  //     "artistName": "Chrisbrown"
  //   },
  //       {
  //     "title": "A day with Will Smith",
  //     "artistName": "Will Smith"
  //   },
  //       {
  //     "title": "Peru Para",
  //     "artistName": "Josh 2 funny"
  //   },
  // ];


  int get selectedScreenIndex => _selectedScreenIndex;
  bool get showForm => _showForm;
  bool get showForm2 => _showForm2;
  bool get checkBox => _checkBox;
  bool get checkBox2 => _checkBox2;
  List get albums => _albums;
  List get songs => _songs;
  List get info => _info;


  selectedScreenItem (int value) {
    _selectedScreenIndex = value;
    update();
  }
  toggleShowForm () {
    _showForm = !_showForm;
    update();
  }
  toggleShowForm2 () {
    _showForm2 = !_showForm2;
    update();
  }
  updateCheckBox () {
    _checkBox = !_checkBox;
    update();
  }
  updateCheckBox2 () {
    _checkBox2 = !_checkBox2;
    update();
  }
  updateShowForm1 (bool value) {
    _showForm = value;
    update();
  }
  updateShowForm2 (bool value) {
    _showForm2 = value;
    update();
  }
}