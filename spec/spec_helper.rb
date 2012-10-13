require 'spork'

Spork.prefork do
  unless ENV['DRB']
    require 'simplecov'
    SimpleCov.start 'rails'
  end

  ENV['RAILS_ENV'] ||= 'test'
  require File.expand_path('../../config/environment', __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'

  Capybara.javascript_driver = :webkit

  Dir[Rails.root.join('spec/support/**/*.rb')].each {|f| require f}
end

Spork.each_run do
  if ENV['DRB']
    require 'simplecov'
    SimpleCov.start 'rails'
  end

  load "#{Rails.root}/config/routes.rb"
  Dir["#{Rails.root}/app/**/*.rb"].each {|f| load f}
  Dir["#{Rails.root}/lib/**/*.rb"].each {|f| load f}

  RSpec.configure do |config|

    config.treat_symbols_as_metadata_keys_with_true_values = true

    config.order = 'random'

    config.infer_base_class_for_anonymous_controllers = false
  end
end
