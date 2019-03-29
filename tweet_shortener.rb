# Write your code here.
require 'pry'


def dictionary()
  dict = {"hello" => "hi",
          "Hello" => "Hi",
          "to" => "2",
          "To" => "2",
          "too" => "2",
          "Too" => "2",
          "two" => "2",
          "Two" => "2",
          "for" => "4",
          "For" => "4",
          "four" => "4",
          "Four" => "4",
          "be" => "b",
          "Be" => "B",
          "you" => "u",
          "You" => "U",
          "at" => "@",
          "At" => "@",
          "and" => "&",
          "And" => "&"
        }
end

def word_substituter(tweet)
  hash = dictionary()
  check = tweet.downcase
  check = check.split(/\W+/)
  check.each_with_index do |x, i|
    if hash.include?(x)
      tweet.gsub!(" #{x} ", " #{hash[x]} ")
    end
  end
  return tweet

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

tww = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"

#binding.pry
