class ResearchBenefitAndRisksController < ApplicationController
  def index
    @research_benefit_and_risks = ResearchBenefitAndRisk.all
  end

  def show
    @research_benefit_and_risk = ResearchBenefitAndRisk.find(params[:id])
  end

  def new
    @research_benefit_and_risk = ResearchBenefitAndRisk.new
  end

  def create
    @research_benefit_and_risk = ResearchBenefitAndRisk.new(params[:research_benefit_and_risk])
    if @research_benefit_and_risk.save
      redirect_to @research_benefit_and_risk, :notice => "Successfully created research benefit and risk."
    else
      render :action => 'new'
    end
  end

  def edit
    @research_benefit_and_risk = ResearchBenefitAndRisk.find(params[:id])
  end

  def update
    @research_benefit_and_risk = ResearchBenefitAndRisk.find(params[:id])
    if @research_benefit_and_risk.update_attributes(params[:research_benefit_and_risk])
      redirect_to @research_benefit_and_risk, :notice  => "Successfully updated research benefit and risk."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @research_benefit_and_risk = ResearchBenefitAndRisk.find(params[:id])
    @research_benefit_and_risk.destroy
    redirect_to research_benefit_and_risks_url, :notice => "Successfully destroyed research benefit and risk."
  end
end
