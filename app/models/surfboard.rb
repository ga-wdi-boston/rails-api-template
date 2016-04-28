# Surfboard Model
class Surfboard < ActiveRecord::Base
  include Authentication
  belongs_to :user, inverse_of: :surfboards
end
