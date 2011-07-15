class UserTest < ActiveSupport::TestCase
  def test_create
    user = User.create(:some => 'params')
    assert user.save
  end

  def test_validate_gender
    user = users(:carmen)
    assert_valid(user)
    user.gender = nil
    assert_not_valid(user, ['Please choose a gender'])
    user.gender = :male
    assert_valid(user)
    user.gender = :female
    assert_valid(user)
  end
end
