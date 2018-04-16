# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(string)
  array = string.split(" ")
  new_array = []
  
  array.collect do |word|
    
    dictionary.collect do |key, value|
      if word.downcase == key
        word = value
      end
    end
    
    new_array.push(word)
  end
  
  new_array.join(" ")
end


def bulk_tweet_shortener(multiple_tweets)
  multiple_tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  if tweet.length > 140
    tweet = tweet[0..136] + "..."
  end
  tweet
end