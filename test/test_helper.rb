ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
  include FactoryGirl::Syntax::Methods
  def create_user! overrides={}
  User.create!(
    email:      overrides[:email]    || "user@example.com",
    password:   overrides[:password] || "password",
  )
end
end

class ActionController::TestCase
  include Devise::TestHelpers
  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  def login user=nil
    user ||= User.first
    sign_in user
    user
  end

  def set_body data
    @request.env["RAW_POST_DATA"] = data.to_json
  end
end