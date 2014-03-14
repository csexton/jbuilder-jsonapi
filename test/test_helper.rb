require 'bundler'
Bundler.setup

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'minitest/autorun'
require 'jbuilder/jsonapi'
