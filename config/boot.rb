ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'rubygems'
require 'rails/commands/server'

=begin
module Rails
  class Server
    alias :default_options_bk :default_options
    def default_options
      default_options_bk.merge!(Host: '120.27.94.221')
    end
  end
end
=end

