require_relative "myfirstproject/version"
require_relative "myfirstproject/cli"
require_relative "myfirstproject/api"
require_relative "myfirstproject/adoption"

require "pry"
#require "nokogiri" - was no  longger needd once we switched to api.
#require "open-uri" - "                                            "
require "httparty"

module MYFIRSTPROJECT
  class Error < StandardError; end
  
end
