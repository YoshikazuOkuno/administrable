require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  fixtures :members

  test 'index' do
    get :index
    assert_response :success
  end

  test 'new' do
    get :new
    assert_response :success
  end

  test 'show' do
    member = members(:one)
    get :show, params: {id: member.id}
    assert_response :success
  end

  test 'edit' do
    member = members(:one)
    get :edit, params: {id: member.id}
    assert_response :success
  end
end
