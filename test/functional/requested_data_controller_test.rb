require 'test_helper'

class RequestedDataControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => RequestedData.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    RequestedData.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RequestedData.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to requested_data_url(assigns(:requested_data))
  end

  def test_edit
    get :edit, :id => RequestedData.first
    assert_template 'edit'
  end

  def test_update_invalid
    RequestedData.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RequestedData.first
    assert_template 'edit'
  end

  def test_update_valid
    RequestedData.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RequestedData.first
    assert_redirected_to requested_data_url(assigns(:requested_data))
  end

  def test_destroy
    requested_data = RequestedData.first
    delete :destroy, :id => requested_data
    assert_redirected_to requested_data_url
    assert !RequestedData.exists?(requested_data.id)
  end
end
