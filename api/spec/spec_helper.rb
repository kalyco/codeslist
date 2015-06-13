ENV["RAILS_ENV"] ||= "test"

require "rails/all"
require "factory_girl_rails"

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mock|
    mock.syntax = :expect
  end

  config.order = :random
end
