ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
<<<<<<< HEAD
=======
require "minitest/reporters"
Minitest::Reporters.use!
>>>>>>> 5a9fa76ff5c2e2b1196661b93e8303b0d7ada712

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
