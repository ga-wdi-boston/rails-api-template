class Story < ActiveRecord::Base
  belongs_to :user, inverse_of: :stories
  validates :user, presence: true
end
