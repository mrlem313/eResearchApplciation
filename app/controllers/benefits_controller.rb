class BenefitsController < ApplicationController
  def index
    @benefits = Benefits.all
  end

  def show
    @benefits = Benefits.find(params[:id])
  end

  def new
    @benefits = Benefits.new
  end

  def create
    @benefits = Benefits.new(params[:benefits])
    if @benefits.save
      redirect_to @benefits, :notice => "Successfully created benefits."
    else
      render :action => 'new'
    end
  end

  def edit
    @benefits = Benefits.find(params[:id])
  end

  def update
    @benefits = Benefits.find(params[:id])
    if @benefits.update_attributes(params[:benefits])
      redirect_to @benefits, :notice  => "Successfully updated benefits."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @benefits = Benefits.find(params[:id])
    @benefits.destroy
    redirect_to benefits_url, :notice => "Successfully destroyed benefits."
  end
end
