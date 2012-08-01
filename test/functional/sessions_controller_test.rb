require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Player.stubs(:authenticate).returns(nil)
    post :create
    assert_template 'new'
    assert_nil session['player_id']
  end

  def test_create_valid
    Player.stubs(:authenticate).returns(Player.first)
    post :create
    assert_redirected_to root_url
    assert_equal Player.first.id, session['player_id']
  end
end
