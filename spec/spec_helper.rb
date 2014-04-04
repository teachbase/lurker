ENV['RAILS_ENV'] = 'test'

if ENV['CODECLIMATE_REPO_TOKEN']
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start

  require 'coveralls'
  Coveralls.wear!
end

require File.expand_path("../dummy/config/environment", __FILE__)

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end