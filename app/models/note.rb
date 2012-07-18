class Note < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:note_text)
  validate(:note_text, presence: true)
  belongs_to(:tweet)
  belongs_to(:user)
end
