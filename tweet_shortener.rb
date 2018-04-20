def dictionary

  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)

  original_array = tweet.split(" ")
  new_array = []

  original_array.collect do |string|

    dictionary.collect do |key, value|
      if string.downcase == key
        string = value

      end
    end
    new_array.push(string)
  end
new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  else
    tweet
  end

end

def shortened_tweet_truncator(tweet)

  if tweet.length > 140
    tweet = word_substituter(tweet)
    tweet = tweet[0..136] + "..."
  end
tweet
end
