require 'test_helper'

class MethodologyResearchDesignInfosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => MethodologyResearchDesignInfo.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    MethodologyResearchDesignInfo.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    MethodologyResearchDesignInfo.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to methodology_research_design_info_url(assigns(:methodology_research_design_info))
  end

  def test_edit
    get :edit, :id => MethodologyResearchDesignInfo.first
    assert_template 'edit'
  end

  def test_update_invalid
    MethodologyResearchDesignInfo.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MethodologyResearchDesignInfo.first
    assert_template 'edit'
  end

  def test_update_valid
    MethodologyResearchDesignInfo.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MethodologyResearchDesignInfo.first
    assert_redirected_to methodology_research_design_info_url(assigns(:methodology_research_design_info))
  end

  def test_destroy
    methodology_research_design_info = MethodologyResearchDesignInfo.first
    delete :destroy, :id => methodology_research_design_info
    assert_redirected_to methodology_research_design_infos_url
    assert !MethodologyResearchDesignInfo.exists?(methodology_research_design_info.id)
  end
end
