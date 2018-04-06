require 'pry'

def dictionary
dictionary_hash = {
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

def word_substituter(string)
  tweet_array=string.split
      tweet_array.collect do |tweet_word|
        if dictionary.keys.include?(tweet_word.downcase)
          tweet_word=dictionary[tweet_word.downcase]
        else
          tweet_word
        end
      end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length >= 140
    tweet[137..tweet.length]= "..."
    tweet
  else
  tweet
  end
end
