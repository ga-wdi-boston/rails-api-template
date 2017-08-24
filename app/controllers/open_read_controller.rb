# frozen_string_literal: true
# Inherit from this class to allow unauthenticate access to read actions
class OpenReadController < ProtectedController
  READ_ACTIONS = [:index, :show].freeze
  skip_before_action :authenticate, only: READ_ACTIONS
  # Gives access to the logged in user
  before_action :set_current_user, only: READ_ACTIONS
end
