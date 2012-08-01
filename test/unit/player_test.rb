require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def new_player(attributes = {})
    attributes[:username] ||= 'foo'
    attributes[:email] ||= 'foo@example.com'
    attributes[:password] ||= 'abc123'
    attributes[:password_confirmation] ||= attributes[:password]
    player = Player.new(attributes)
    player.valid? # run validations
    player
  end

  def setup
    Player.delete_all
  end

  def test_valid
    assert new_player.valid?
  end

  def test_require_username
    assert_equal ["can't be blank"], new_player(:username => '').errors[:username]
  end

  def test_require_password
    assert_equal ["can't be blank"], new_player(:password => '').errors[:password]
  end

  def test_require_well_formed_email
    assert_equal ["is invalid"], new_player(:email => 'foo@bar@example.com').errors[:email]
  end

  def test_validate_uniqueness_of_email
    new_player(:email => 'bar@example.com').save!
    assert_equal ["has already been taken"], new_player(:email => 'bar@example.com').errors[:email]
  end

  def test_validate_uniqueness_of_username
    new_player(:username => 'uniquename').save!
    assert_equal ["has already been taken"], new_player(:username => 'uniquename').errors[:username]
  end

  def test_validate_odd_characters_in_username
    assert_equal ["should only contain letters, numbers, or .-_@"], new_player(:username => 'odd ^&(@)').errors[:username]
  end

  def test_validate_password_length
    assert_equal ["is too short (minimum is 4 characters)"], new_player(:password => 'bad').errors[:password]
  end

  def test_require_matching_password_confirmation
    assert_equal ["doesn't match confirmation"], new_player(:password_confirmation => 'nonmatching').errors[:password]
  end

  def test_generate_password_hash_and_salt_on_create
    player = new_player
    player.save!
    assert player.password_hash
    assert player.password_salt
  end

  def test_authenticate_by_username
    Player.delete_all
    player = new_player(:username => 'foobar', :password => 'secret')
    player.save!
    assert_equal player, Player.authenticate('foobar', 'secret')
  end

  def test_authenticate_by_email
    Player.delete_all
    player = new_player(:email => 'foo@bar.com', :password => 'secret')
    player.save!
    assert_equal player, Player.authenticate('foo@bar.com', 'secret')
  end

  def test_authenticate_bad_username
    assert_nil Player.authenticate('nonexisting', 'secret')
  end

  def test_authenticate_bad_password
    Player.delete_all
    new_player(:username => 'foobar', :password => 'secret').save!
    assert_nil Player.authenticate('foobar', 'badpassword')
  end
end
