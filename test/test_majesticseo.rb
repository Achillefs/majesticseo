require File.dirname(__FILE__) + '/test_helper.rb'

class TestMajesticseo < Test::Unit::TestCase
  def test_cannot_initialize_client_without_api_key
    assert_raise Majesticseo::InvalidAPIKey do
      Majesticseo::Client.new
    end
  end
  
  def test_cannot_initialize_client_with_empty_api_key
    assert_raise Majesticseo::InvalidAPIKey do
      Majesticseo::Client.new(:app_api_key => "")
    end
  end
end
