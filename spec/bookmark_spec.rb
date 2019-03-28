require 'bookmark'

describe Bookmark do

  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://www.rhs.org.uk")
      expect(bookmarks).to include("https://rebellion.earth/")
      expect(bookmarks).to include("https://friendsoftheearth.uk")
    end
  end

end
