#write your code here
def translate(string)
  wordArray = string.split(" ") #splits sentence into array of words
  wordArray.map!{|word| translateWord(word)} #translates each word
  return wordArray.join(" ") #rejoins the word array into a space separated string
end

def translateWord(word)
  if findFirstVowel(word) == 0 #i.e. if word starts with vowel
    result = word + "ay"
    #else, if word starts with consonant
  elsif word[findFirstVowel(word)] == "u" && word[findFirstVowel(word)-1] == "q" #catches the qu phoneme
    result = word[(findFirstVowel(word))+1..-1] + word[0,(findFirstVowel(word))+1] + "ay"
  else #general consonant starts
    result = word[(findFirstVowel(word))..-1] + word[0,(findFirstVowel(word))] + "ay"
  end
  return result
end

def findFirstVowel(word) #finds the first vowel in word
  return (word =~ /[aeiou]/i) #using regex, ignoring case
end
