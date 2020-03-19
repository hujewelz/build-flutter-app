import 'package:music_app/models/artist.dart';

class Song {
  final Artist artist;
  final String thumbnal;
  final String name;
  final String lyrics;

  Song({this.artist, this.name, this.thumbnal, this.lyrics = ''});
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
    lyrics: sevenRing,
  ),
  Song(
    artist: taylor,
    name: 'Love Story',
    thumbnal: 'assets/images/lovestory.jpeg',
    lyrics: sevenRing,
  ),
  Song(
    artist: sam,
    name: "I'm Not the Only One",
    thumbnal: 'assets/images/sam.jpg',
    lyrics: sevenRing,
  ),
  Song(
    artist: bellie,
    name: 'I Love You',
    thumbnal: 'assets/images/bellie.jpg',
    lyrics: sevenRing,
  ),
];

final sevenRing = '''
Yeah breakfast at Tiffany's and bottles of bubbles
Girls with tattoos who like getting in trouble
Lashes and diamonds ATM machines
Bought myself all of my favorite things
Been through some bad s**t I should be a sad b***h
Who woulda thought it'd turn me to a savage
Rather be tied up with calls and not strings
Write my own checks like I write what I sing yeah
My wrist stop watchin' my neck is flossy
Make big deposits my gloss is poppin'
You like my hair
Gee thanks just bought it
I see it I like it I want it I got it
I want it I got it I want it I got it
I want it I got it I want it I got it
You like my hair
Gee thanks just bought it
I see it I like it I want it I got it
Wearing a ring but ain't gon' be no "Mrs."
Bought matching diamonds for six of my b***hes
I'd rather spoil all my friends with my riches
Think retail therapy my new addiction
Whoever said money can't solve your problems
Must not have had enough money to solve 'em
They say "Which one" I say "Nah I want all of 'em"
Happiness is the same price as red-bottoms
My smile is beamin' my skin is gleamin'
The way it shine I know you've seen it (You've seen it)
I bought a crib just for the closet
Both his and hers I want it I got it yeah
I want it I got it I want it I got it
I want it I got it I want it I got it
You like my hair
Gee thanks just bought it
I see it I like it I want it I got it
I got my receipts be lookin' like phone numbers
If it ain't money then wrong number
Black card is my business card
The way it be settin' the tone for me
I don't mean to brag but I be like "Put it in the bag" yeah
When you see them racks they stacked up like my a*s yeah
Shoot go from the store to the booth
Make it all back in one loop gimme the loot
Never mind I got the juice
Nothing but net when we shoot
Look at my neck look at my jet
Ain't got enough money to pay me respect
Ain't no budget when I'm on the set
If I like it then that's what I get yeah
I want it I got it I want it I got it
I want it I got it I want it I got it
You like my hair
Gee thanks just bought it
I see it I like it I want it I got it
''';
