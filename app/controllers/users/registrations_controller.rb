class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :authenticate_user!
end
