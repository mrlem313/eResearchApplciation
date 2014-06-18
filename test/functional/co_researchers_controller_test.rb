require 'test_helper'

class CoResearchersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => CoResearcher.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    CoResearcher.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    CoResearcher.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to co_researcher_url(assigns(:co_researcher))
  end

  def test_edit
    get :edit, :id => CoResearcher.first
    assert_template 'edit'
  end

  def test_update_invalid
    CoResearcher.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CoResearcher.first
    assert_template 'edit'
  end

  def test_update_valid
    CoResearcher.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CoResearcher.first
    assert_redirected_to co_researcher_url(assigns(:co_researcher))
  end

  def test_destroy
    co_researcher = CoResearcher.first
    delete :destroy, :id => co_researcher
    assert_redirected_to co_researchers_url
    assert !CoResearcher.exists?(co_researcher.id)
  end
end
