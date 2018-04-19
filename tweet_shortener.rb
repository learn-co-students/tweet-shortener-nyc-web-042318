# Write your code here.

def dictionary 
  {
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
  split_array = string.split
  long_words = dictionary.keys
  split_array.map! { |word|
    contain = []
    contain.push(word.downcase)
    if (contain&long_words).length > 0
      contain.clear
      dictionary[word.downcase]
    else 
      word
    end
  }
  return split_array.join" ".to_s
end

def bulk_tweet_shortener(array_of_tweets)
  for tweet in array_of_tweets
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end
  
def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    return tweet
  else
    if word_substituter(tweet).length < 140
      return word_substituter(tweet)
    else
      return word_substituter(tweet)[0..136] + "..."
    end
  end
      
end
  