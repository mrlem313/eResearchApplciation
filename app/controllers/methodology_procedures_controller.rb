class MethodologyProceduresController < ApplicationController
  def index
    @methodology_procedures = MethodologyProcedure.all
  end

  def show
    @methodology_procedure = MethodologyProcedure.find(params[:id])
  end

  def new
    @methodology_procedure = MethodologyProcedure.new
  end

  def create
    @methodology_procedure = MethodologyProcedure.new(params[:methodology_procedure])
    if @methodology_procedure.save
      redirect_to @methodology_procedure, :notice => "Successfully created methodology procedure."
    else
      render :action => 'new'
    end
  end

  def edit
    @methodology_procedure = MethodologyProcedure.find(params[:id])
  end

  def update
    @methodology_procedure = MethodologyProcedure.find(params[:id])
    if @methodology_procedure.update_attributes(params[:methodology_procedure])
      redirect_to @methodology_procedure, :notice  => "Successfully updated methodology procedure."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @methodology_procedure = MethodologyProcedure.find(params[:id])
    @methodology_procedure.destroy
    redirect_to methodology_procedures_url, :notice => "Successfully destroyed methodology procedure."
  end
end
