class BeerSong {
  List<String> recite(int i, int j) {
    List<String> song = [];
    song.addAll(_sing(i, j));
    if (j > 1) {
      song.add('');
      song.addAll(recite(i - 1, j - 1));
    }
    return song;
  }
  Iterable<String> _sing(int i, int j) {
    if (i == 0) {
      return [
        'No more bottles of beer on the wall, no more bottles of beer.',
        'Go to the store and buy some more, 99 bottles of beer on the wall.'
      ];
    }
    return [
      '$i bottle${i == 1 ? '' : 's'} of beer on the wall, $i bottle${i == 1 ? '' : 's'} of beer.',
      'Take ${i == 1 ? 'it' : 'one'} down and pass it around, ${i == 1 ? 'no more' : i - 1} bottle${i - 1 == 1 ? '' : 's'} of beer on the wall.'
    ];
  }
}
