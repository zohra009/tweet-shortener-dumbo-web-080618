# Write your code here.
require "pry"

def dictionary
  convert = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet)
  # replaces long words with their expected short form

    tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |phrase|
    puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweet)
  tweet.split(" ").map do |phrase|
    if phrase.length > 140
      word_substituter(phrase)
    elsif phrase.length <= 140
      phrase
    end
  end
end

def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |phrase|
    if phrase.length > 140
      word_substituter(phrase)[0..140] + "..."
    else
      phrase
    end
  end.join(" ")
end


  def shortened_tweet_truncator(tweet)
    tweet.split(" ").map do |phrase|
      if phrase.length > 140
        word_substituter(phrase)[0..140] + "..."
      else
        phrase
      end
    end.join(" ")
  end
