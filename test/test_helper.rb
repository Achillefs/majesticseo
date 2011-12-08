require 'stringio'
require 'test/unit'
require File.expand_path('../../lib/majesticseo', __FILE__)

def maj_client(key=nil, env=nil)
  Majesticseo::Client.new(:app_api_key => key, :environment => env)
end

def fake_client(env=nil)
  maj_client("fake", env)
end

