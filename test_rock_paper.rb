require "test/unit"
require "rack/test"
require './rock_paper'

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::Builder.new do
      run RockPaperScissors.new
    end.to_app
  end

  def test_index
    get "/"
    #puts last_response.inspect
    assert last_response.ok?
  end
end