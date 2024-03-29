# coding: utf-8
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
   fixtures :all
   include ApplicationHelper
   # テストユーザーがログイン中の場合にtrueを返す
   def is_logged_in?
      !session[:user_id].nil?
   end
   # Add more helper methods to be used by all tests here...
end
