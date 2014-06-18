require 'test_helper'

class QualitativeDesignsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => QualitativeDesign.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    QualitativeDesign.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    QualitativeDesign.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to qualitative_design_url(assigns(:qualitative_design))
  end

  def test_edit
    get :edit, :id => QualitativeDesign.first
    assert_template 'edit'
  end

  def test_update_invalid
    QualitativeDesign.any_instance.stubs(:valid?).returns(false)
    put :update, :id => QualitativeDesign.first
    assert_template 'edit'
  end

  def test_update_valid
    QualitativeDesign.any_instance.stubs(:valid?).returns(true)
    put :update, :id => QualitativeDesign.first
    assert_redirected_to qualitative_design_url(assigns(:qualitative_design))
  end

  def test_destroy
    qualitative_design = QualitativeDesign.first
    delete :destroy, :id => qualitative_design
    assert_redirected_to qualitative_designs_url
    assert !QualitativeDesign.exists?(qualitative_design.id)
  end
end
