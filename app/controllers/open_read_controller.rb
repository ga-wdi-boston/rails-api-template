# frozen_string_literal: true
# Inherit from this class to allow unauthenticated access to read actions
class OpenReadController < ProtectedController
  READ_ACTIONS = [:index, :show].freeze
  skip_before_action :authenticate, only: READ_ACTIONS
  before_action :set_current_user, only: READ_ACTIONS
end
