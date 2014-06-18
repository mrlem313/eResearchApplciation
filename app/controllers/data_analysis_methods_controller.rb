class DataAnalysisMethodsController < ApplicationController
  def index
    @data_analysis_methods = DataAnalysisMethod.all
  end

  def show
    @data_analysis_method = DataAnalysisMethod.find(params[:id])
  end

  def new
    @data_analysis_method = DataAnalysisMethod.new
  end

  def create
    @data_analysis_method = DataAnalysisMethod.new(params[:data_analysis_method])
    if @data_analysis_method.save
      redirect_to @data_analysis_method, :notice => "Successfully created data analysis method."
    else
      render :action => 'new'
    end
  end

  def edit
    @data_analysis_method = DataAnalysisMethod.find(params[:id])
  end

  def update
    @data_analysis_method = DataAnalysisMethod.find(params[:id])
    if @data_analysis_method.update_attributes(params[:data_analysis_method])
      redirect_to @data_analysis_method, :notice  => "Successfully updated data analysis method."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @data_analysis_method = DataAnalysisMethod.find(params[:id])
    @data_analysis_method.destroy
    redirect_to data_analysis_methods_url, :notice => "Successfully destroyed data analysis method."
  end
end
