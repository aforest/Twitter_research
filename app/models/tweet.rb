class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:twitter_user, :tweeted_text,:tweeted_at)
  validates(:twitter_user,presence: true)
  validates(:twitter_at, presence: true)
  belongs_to(:user)
end
