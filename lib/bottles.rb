class Bottles
  def verse(bottles)
    "#{firstSentence(bottles)}#{secondSentence(bottles - 1)}"
  end

  def verses(start, finish)
    verses = []
    start.downto(finish) do |i|
      verses << verse(i)
    end
    verses.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def bottle(bottles)
    if bottles == 0
      return "no more bottles"
    elsif bottles == 1
      return "#{bottles} bottle"
    end
    "#{bottles} bottles"
  end

  def firstSentence(bottles)
    bottleStr = bottle(bottles)
    "#{bottleStr.capitalize} of beer on the wall, #{bottleStr} of beer.\n"
  end

  def secondSentence(bottles)
    if (bottles == -1)
      return "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
    "Take #{bottles == 0 ? 'it' : 'one'} down and pass it around, #{bottle(bottles)} of beer on the wall.\n"
  end
end
