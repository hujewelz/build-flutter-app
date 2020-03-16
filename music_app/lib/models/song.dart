import 'package:music_app/models/artist.dart';

class Song {
  final Artist artist;
  final String thumbnal;
  final String name;

  Song({
    this.artist,
    this.name,
    this.thumbnal,
  });
}

// ARTISTS
final ariana = Artist(
  name: 'Ariana Grande',
  avatar: 'assets/images/ariana.jpg',
);
final taylor = Artist(
  name: 'Taylor Swift',
  avatar: 'assets/images/taylor.jpg',
);
final avril = Artist(
  name: 'Avril Lavigne',
  avatar: 'assets/images/avril.jpeg',
);
final sam = Artist(
  name: 'Sam Smith',
  avatar: 'assets/images/sam.jpg',
);
final bellie = Artist(
  name: 'Bellie Eilish',
  avatar: 'assets/images/bellie.jpg',
);
final adele = Artist(
  name: 'Adele',
  avatar: 'assets/images/adele.jpg',
);
final List<Artist> artists = [ariana, taylor, avril, adele, sam, bellie];

// SONGS
final List<Song> songs = [
  Song(
    artist: ariana,
    name: '7 rings',
    thumbnal: 'assets/images/7rings.jpeg',
  ),
  Song(
    artist: taylor,
    name: 'Love Story',
    thumbnal: 'assets/images/lovestory.jpeg',
  ),
  Song(
    artist: sam,
    name: "I'm Not the Only One",
    thumbnal: 'assets/images/sam.jpg',
  ),
  Song(
    artist: bellie,
    name: 'I Love You',
    thumbnal: 'assets/images/bellie.jpg',
  ),
];
