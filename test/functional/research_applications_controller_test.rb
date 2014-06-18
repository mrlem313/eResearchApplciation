require 'test_helper'

class ResearchApplicationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ResearchApplication.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ResearchApplication.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ResearchApplication.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to research_application_url(assigns(:research_application))
  end

  def test_edit
    get :edit, :id => ResearchApplication.first
    assert_template 'edit'
  end

  def test_update_invalid
    ResearchApplication.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ResearchApplication.first
    assert_template 'edit'
  end

  def test_update_valid
    ResearchApplication.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ResearchApplication.first
    assert_redirected_to research_application_url(assigns(:research_application))
  end

  def test_destroy
    research_application = ResearchApplication.first
    delete :destroy, :id => research_application
    assert_redirected_to research_applications_url
    assert !ResearchApplication.exists?(research_application.id)
  end
end
