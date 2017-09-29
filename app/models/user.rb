# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy

end
