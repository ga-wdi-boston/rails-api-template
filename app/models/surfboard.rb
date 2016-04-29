# Surfboard Model
class Surfboard < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
end

# class Person < ActiveRecord::Base
# # has_many accepts two arguments: pets and a set of key value pairs
#   has_many :pets, inverse_of: :owner, foreign_key: 'owner_id'
#   belongs_to :born_in, inverse_of: :cities, class_name: 'City'
