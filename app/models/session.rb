class Session < ActiveRecord::Base
  belongs_to :user, inverse_of: :sessions
end
