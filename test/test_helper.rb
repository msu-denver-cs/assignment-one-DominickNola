ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'simplecov'
SimpleCov.start 'rails'

SimpleCov.formatter = SimpleCov::Formatter::SimpleFormatter
# Have to have this even though it's supposed to be the default
SimpleCov.at_exit do
  puts SimpleCov.result.format!
end
# Have to have these even though they're not required for the default formatter.
SimpleCov.start do
  add_group "app", "app"
  add_group "test", "test"
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
