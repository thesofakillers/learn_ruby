class Book
  def initialize(title=nil)
    @title = title
  end

  def title=(new_title)
    @title = titleize(new_title)
  end

  def title
    @title
  end
end


def titleize(stringToTitleize)
  if stringToTitleize.index(" ") == nil
    return stringToTitleize.capitalize
  else
    wordArray = stringToTitleize.split
    wordArray.map! {|word|  if  word.upcase != "AND" &&
                                word.upcase != "THE" &&
                                word.upcase != "OVER" &&
                                word.upcase != "IN" &&
                                word.upcase != "OF" &&
                                word.upcase != "A" &&
                                word.upcase != "AN"
                              word.capitalize
                            else
                              word
                            end}
    finalWord = wordArray.join(" ")
    finalWord[0] = finalWord[0].capitalize
    return finalWord
  end
end
