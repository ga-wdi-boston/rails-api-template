#
class User < ActiveRecord::Base
  include Authentication
  has_many :surfboards
  # , foreign_key: :surfboard_id
end
