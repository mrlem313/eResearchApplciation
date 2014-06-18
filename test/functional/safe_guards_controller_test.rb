require 'test_helper'

class SafeGuardsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SafeGuard.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SafeGuard.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SafeGuard.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to safe_guard_url(assigns(:safe_guard))
  end

  def test_edit
    get :edit, :id => SafeGuard.first
    assert_template 'edit'
  end

  def test_update_invalid
    SafeGuard.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SafeGuard.first
    assert_template 'edit'
  end

  def test_update_valid
    SafeGuard.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SafeGuard.first
    assert_redirected_to safe_guard_url(assigns(:safe_guard))
  end

  def test_destroy
    safe_guard = SafeGuard.first
    delete :destroy, :id => safe_guard
    assert_redirected_to safe_guards_url
    assert !SafeGuard.exists?(safe_guard.id)
  end
end
