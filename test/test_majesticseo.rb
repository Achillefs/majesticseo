require File.expand_path('../test_helper', __FILE__)

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

  def test_builds_correct_url_for_development
    client = Majesticseo::Client.new({
      :app_api_key => "fakefake",
      :environment => "development"
    })

    assert_equal client.build_url,
      "http://developer.majesticseo.com/api_command"
  end

  def test_builds_correct_url_for_production
    client = Majesticseo::Client.new({
      :app_api_key => "fakefake",
      :environment => "production"
    })

    assert_equal client.build_url,
      "http://enterprise.majesticseo.com/api_command"

    client = Majesticseo::Client.new({
      :app_api_key => "fakefake",
      :environment => :production
    })

    assert_equal client.build_url,
      "http://enterprise.majesticseo.com/api_command"
  end

  def test_builds_correct_url_for_default
    client = Majesticseo::Client.new :app_api_key => "fakefake"

    assert_equal client.build_url,
      "http://developer.majesticseo.com/api_command"
  end
end
