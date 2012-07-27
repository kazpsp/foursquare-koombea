class ApplicationController < ActionController::Base
  protect_from_forgery
  # require 'net/http'
  # require 'net/https'
  # require 'open-uri'
  # require 'json'
  # require 'openssl'
  # require 'YAML'
  # require 'Foursquare2'
  # OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
 
 private
 
 def get_client
   @client ||= Foursquare2::Client.new(:oauth_token => 'L0CPCGNML25GE0SY4VIX42KRJA0YT0EHKGDOUOP5TFV3AMDW')
 end
 
end

  