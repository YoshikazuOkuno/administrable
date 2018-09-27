require 'test_helper'

class FieldExamplesControllerTest < ActionController::TestCase
  fixtures :field_examples

  test 'new' do
    get :new
    assert_response :success
  end

  test 'show' do
    field_example = field_examples(:one)
    get :show, params: {id: field_example.id}
    assert_response :success
  end

  test 'edit' do
    field_example = field_examples(:one)
    get :edit, params: {id: field_example.id}
    assert_response :success
  end
end
