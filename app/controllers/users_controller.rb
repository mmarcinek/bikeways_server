class UsersController < ApplicationController
  before_action :authenticate_user!
  # user_signed_in? helper available
  # current_user available via Devise
  # user_session available via Devise

end
