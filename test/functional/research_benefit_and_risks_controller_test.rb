require 'test_helper'

class ResearchBenefitAndRisksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ResearchBenefitAndRisk.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ResearchBenefitAndRisk.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ResearchBenefitAndRisk.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to research_benefit_and_risk_url(assigns(:research_benefit_and_risk))
  end

  def test_edit
    get :edit, :id => ResearchBenefitAndRisk.first
    assert_template 'edit'
  end

  def test_update_invalid
    ResearchBenefitAndRisk.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ResearchBenefitAndRisk.first
    assert_template 'edit'
  end

  def test_update_valid
    ResearchBenefitAndRisk.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ResearchBenefitAndRisk.first
    assert_redirected_to research_benefit_and_risk_url(assigns(:research_benefit_and_risk))
  end

  def test_destroy
    research_benefit_and_risk = ResearchBenefitAndRisk.first
    delete :destroy, :id => research_benefit_and_risk
    assert_redirected_to research_benefit_and_risks_url
    assert !ResearchBenefitAndRisk.exists?(research_benefit_and_risk.id)
  end
end
