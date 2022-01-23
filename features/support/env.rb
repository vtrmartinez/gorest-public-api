require 'pry'
require 'rspec'
require 'httparty'
require 'byebug'
require 'faker'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

HOSTS = YAML.load_file('config/hosts.yml')
PATHS = YAML.load_file('config/paths.yml')

page = lambda {|klass| klass.new}

Before do
  @page = page
end