require 'test_helper'

class ResearchDataControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ResearchData.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ResearchData.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ResearchData.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to research_data_url(assigns(:research_data))
  end

  def test_edit
    get :edit, :id => ResearchData.first
    assert_template 'edit'
  end

  def test_update_invalid
    ResearchData.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ResearchData.first
    assert_template 'edit'
  end

  def test_update_valid
    ResearchData.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ResearchData.first
    assert_redirected_to research_data_url(assigns(:research_data))
  end

  def test_destroy
    research_data = ResearchData.first
    delete :destroy, :id => research_data
    assert_redirected_to research_data_url
    assert !ResearchData.exists?(research_data.id)
  end
end
