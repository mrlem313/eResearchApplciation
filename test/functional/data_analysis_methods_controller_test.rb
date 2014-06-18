require 'test_helper'

class DataAnalysisMethodsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => DataAnalysisMethod.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    DataAnalysisMethod.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    DataAnalysisMethod.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to data_analysis_method_url(assigns(:data_analysis_method))
  end

  def test_edit
    get :edit, :id => DataAnalysisMethod.first
    assert_template 'edit'
  end

  def test_update_invalid
    DataAnalysisMethod.any_instance.stubs(:valid?).returns(false)
    put :update, :id => DataAnalysisMethod.first
    assert_template 'edit'
  end

  def test_update_valid
    DataAnalysisMethod.any_instance.stubs(:valid?).returns(true)
    put :update, :id => DataAnalysisMethod.first
    assert_redirected_to data_analysis_method_url(assigns(:data_analysis_method))
  end

  def test_destroy
    data_analysis_method = DataAnalysisMethod.first
    delete :destroy, :id => data_analysis_method
    assert_redirected_to data_analysis_methods_url
    assert !DataAnalysisMethod.exists?(data_analysis_method.id)
  end
end
