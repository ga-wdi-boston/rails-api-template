#
class User < ActiveRecord::Base
  include Authentication
  has_many :surfboards
  has_many :sessions
end
