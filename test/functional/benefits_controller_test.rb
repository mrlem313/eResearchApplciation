require 'test_helper'

class BenefitsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Benefits.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Benefits.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Benefits.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to benefits_url(assigns(:benefits))
  end

  def test_edit
    get :edit, :id => Benefits.first
    assert_template 'edit'
  end

  def test_update_invalid
    Benefits.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Benefits.first
    assert_template 'edit'
  end

  def test_update_valid
    Benefits.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Benefits.first
    assert_redirected_to benefits_url(assigns(:benefits))
  end

  def test_destroy
    benefits = Benefits.first
    delete :destroy, :id => benefits
    assert_redirected_to benefits_url
    assert !Benefits.exists?(benefits.id)
  end
end
