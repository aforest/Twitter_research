require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  setup do
    %w(Business Personal Money Entertainment).each do |title|
      Category.create!(title: title)
    end
end
    test("suggested categories works correctly") do
  tweet = Tweet.new do |t|
    t.tweet_text = "I wish I could get my business of the ground #money"
    end
    assert-equal("Business,Money", tweet.suggested_categories)
    end
  end
