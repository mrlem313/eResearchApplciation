require 'test_helper'

class ResearchSamplingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ResearchSampling.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ResearchSampling.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ResearchSampling.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to research_sampling_url(assigns(:research_sampling))
  end

  def test_edit
    get :edit, :id => ResearchSampling.first
    assert_template 'edit'
  end

  def test_update_invalid
    ResearchSampling.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ResearchSampling.first
    assert_template 'edit'
  end

  def test_update_valid
    ResearchSampling.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ResearchSampling.first
    assert_redirected_to research_sampling_url(assigns(:research_sampling))
  end

  def test_destroy
    research_sampling = ResearchSampling.first
    delete :destroy, :id => research_sampling
    assert_redirected_to research_samplings_url
    assert !ResearchSampling.exists?(research_sampling.id)
  end
end
