require 'test_helper'

class Admin::Master::CompaniesControllerTest < ActionController::TestCase
  fixtures :companies
  
  test 'index' do
    get :index
    assert_response :success
  end
  
  test 'new' do
    get :new
    assert_response :success
  end
  
  test 'show' do
    company = companies(:one)
    get :show, params: {id: company.id}
    assert_response :success
  end
  
  test 'edit' do
    company = companies(:one)
    get :edit, params: {id: company.id}
    assert_response :success
  end
  
  test 'destroy' do
    company = companies(:one)
    assert_true Company.where(id: company.id).exists?
    post :destroy, params: {id: company.id}
    assert_response :redirect
    assert_false Company.where(id: company.id).exists?
  end
end
