require 'test_helper'

class ResearchElementsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ResearchElement.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ResearchElement.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ResearchElement.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to research_element_url(assigns(:research_element))
  end

  def test_edit
    get :edit, :id => ResearchElement.first
    assert_template 'edit'
  end

  def test_update_invalid
    ResearchElement.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ResearchElement.first
    assert_template 'edit'
  end

  def test_update_valid
    ResearchElement.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ResearchElement.first
    assert_redirected_to research_element_url(assigns(:research_element))
  end

  def test_destroy
    research_element = ResearchElement.first
    delete :destroy, :id => research_element
    assert_redirected_to research_elements_url
    assert !ResearchElement.exists?(research_element.id)
  end
end
