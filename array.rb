class SongList
  def deleteFirst
    @songs.shift
  end
  def deleteLast
    @songs.pop
  end
  def [](key)
    return @songs[key] if key.kind_of?(Integer)
    return @songs.find { |aSong| aSong.name == key }
  end
end
list = SongList.new
list.
  append(Song.new('title1', 'artist1', 1)).
  append(Song.new('title2', 'artist2', 2)).
  append(Song.new('title3', 'artist3', 3)).
  append(Song.new('title4', 'artist4', 4)).
list.deleteFirst»	Song: title1--artist1 (1)
list.deleteFirst»	Song: title2--artist2 (2)
list.deleteLast»	Song: title4--artist4 (4)
list.deleteLast»	Song: title3--artist3 (3)
list.deleteLast»	

list[0]»	Song: title1--artist1 (1)
list[2]»	Song: title3--artist3 (3)
list[9]»	nil

