require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    ENV['EMAIL_DOMAIN'] = 'test\.com'
    @user = User.new(password: 'foobar', password_confirmation: 'foobar')
  end

  test 'errors on a user without an email' do
    assert @user.invalid?
  end

  test 'creates a user with a valid email' do
    @user.email = 'foo@test.com'

    assert @user.valid?
  end

  test 'errors on a user with an invalid email' do
    @user.email = 'foo@fail.com'

    assert @user.invalid?
  end

  test 'errors on a duplicate email address' do
    @user.email = 'foo@test.com'
    @user.save

    @user2 = User.new(email: 'Foo@test.com')

    assert @user2.invalid?
  end

  test 'email address should be persisted in lowercase' do
    mixed_case_email = 'Foo@Test.Com'
    @user.email = mixed_case_email
    @user.save

    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  test 'password should be present (nonblank)' do
    @user.password = @user.password_confirmation = ' ' * 6
    assert_not @user.valid?
  end

  test 'password should have a minimum length' do
    @user.password = @user.password_confirmation = 'a' * 5
    assert_not @user.valid?
  end
end
