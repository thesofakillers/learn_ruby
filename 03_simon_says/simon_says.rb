#write your code here
def echo(stringToEcho)
  return "#{stringToEcho}"
end

def shout(stringToShout)
  return "#{stringToShout.upcase}"
end

def repeat(stringToRepeat, timesToRepeat = 2)
  return ("#{stringToRepeat} "*timesToRepeat).chomp(" ")
end

def start_of_word(word, lengthOfStart)
  return word[0, lengthOfStart]
end

def first_word(stringToExamine)
  return stringToExamine[0, stringToExamine.index(" ")]
end

def titleize(stringToTitleize)
  if stringToTitleize.index(" ") == nil
    return stringToTitleize.capitalize
  else
    wordArray = stringToTitleize.split
    wordArray.map! {|word|  if word.upcase != "AND" && word.upcase != "THE" && word.upcase != "OVER"
                              word.capitalize
                            else
                              word
                            end}
    finalWord = wordArray.join(" ")
    finalWord[0] = finalWord[0].capitalize
    return finalWord
  end
end
