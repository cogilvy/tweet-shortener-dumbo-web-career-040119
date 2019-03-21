# Write your code here.
def dictionary
  list_of_words = {
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
  shortened = string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  shortened.join(" ")
end

def bulk_tweet_shortener(tweet)
  new_array = []
  tweet.each do |word|
    new_array << word_substituter(word)
  end
  new_array.each do |word|
    puts word
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweetss)
  if word_substituter(tweetss).length > 140
    word_substituter(tweetss)[1..135] + "....."
  else
    tweetss
  end
end
