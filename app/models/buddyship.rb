class Buddyship < ApplicationRecord
  belongs_to :user1, foreign_key: "user1"
  belongs_to :user2, foreign_key: "user2"
end
