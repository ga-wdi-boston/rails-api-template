#
class User < ActiveRecord::Base
  include Authentication
  has_many :surfboards, inverse_of: :users
end
