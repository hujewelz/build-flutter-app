class Playlist {
  final String name;
  final String thumbnail;

  Playlist({this.name, this.thumbnail});
}

final playLists = [
  Playlist(
    name: 'Rainly Mood',
    thumbnail: 'assets/images/rainy_mood.jpg',
  ),
  Playlist(
    name: 'Daily Life',
    thumbnail: 'assets/images/daily_life.jpg',
  )
];
