# Surfboard Model
class Surfboard < ActiveRecord::Base
  belongs_to :user
  belongs_to :session
  validates :user, presence: true
end
