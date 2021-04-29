class Message < ApplicationRecord
  belongs_to :buddyship
  belongs_to :user
end
