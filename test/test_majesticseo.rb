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
end

class TestMajesticURL < Test::Unit::TestCase
  def test_builds_correct_url_for_development
    assert_equal "http://developer.majesticseo.com/api_command",
      fake_client("development").build_url
  end

  def test_builds_correct_url_for_production
    [:production, "production"].each do |e|
      assert_equal "http://enterprise.majesticseo.com/api_command",
        fake_client(e).build_url
    end
  end

  def test_builds_correct_url_for_default
    assert_equal "http://developer.majesticseo.com/api_command",
      fake_client.build_url
  end
end

class TestMajesticDebug < Test::Unit::TestCase
  def setup
    @_stdout = $stdout
    @stringio = StringIO.new
    $stdout = @stringio
  end

  def teardown
    $stdout = @_stdout
  end

  def test_client_in_debug_mode_by_default
    assert fake_client.debug?
  end

  def test_suppress_output_when_not_in_debug_mode
    client = Majesticseo::Client.new(:app_api_key => "test", :debug => false)

    assert_equal "", @stringio.string
  end
end
