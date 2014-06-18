require 'test_helper'

class MethodologyProceduresControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => MethodologyProcedure.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    MethodologyProcedure.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    MethodologyProcedure.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to methodology_procedure_url(assigns(:methodology_procedure))
  end

  def test_edit
    get :edit, :id => MethodologyProcedure.first
    assert_template 'edit'
  end

  def test_update_invalid
    MethodologyProcedure.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MethodologyProcedure.first
    assert_template 'edit'
  end

  def test_update_valid
    MethodologyProcedure.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MethodologyProcedure.first
    assert_redirected_to methodology_procedure_url(assigns(:methodology_procedure))
  end

  def test_destroy
    methodology_procedure = MethodologyProcedure.first
    delete :destroy, :id => methodology_procedure
    assert_redirected_to methodology_procedures_url
    assert !MethodologyProcedure.exists?(methodology_procedure.id)
  end
end
