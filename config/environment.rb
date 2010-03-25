# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

ENV['GEM_PATH'] = "/home/kinesis/.gem/ruby/1.8:#{ENV['GEM_PATH']}"
Gem.clear_paths

Rails::Initializer.run do |config|

  config.time_zone = 'UTC'

  config.load_paths += Dir["#{RAILS_ROOT}/vendor/gems/**"].map do |dir|
    File.directory?(lib = "#{dir}/lib") ? lib : dir
  end

 config.gem "GeoRuby", :lib => "geo_ruby", :version => '1.3.4'
 config.gem 'spatial_adapter'
  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
  require 'geo_ruby'
end