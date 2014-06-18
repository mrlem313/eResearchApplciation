class RequestedDataController < ApplicationController
  def index
    @requested_data = RequestedData.all
  end

  def show
    @requested_data = RequestedData.find(params[:id])
  end

  def new
    @requested_data = RequestedData.new
  end

  def create
    @requested_data = RequestedData.new(params[:requested_data])
    if @requested_data.save
      redirect_to @requested_data, :notice => "Successfully created requested data."
    else
      render :action => 'new'
    end
  end

  def edit
    @requested_data = RequestedData.find(params[:id])
  end

  def update
    @requested_data = RequestedData.find(params[:id])
    if @requested_data.update_attributes(params[:requested_data])
      redirect_to @requested_data, :notice  => "Successfully updated requested data."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @requested_data = RequestedData.find(params[:id])
    @requested_data.destroy
    redirect_to requested_data_url, :notice => "Successfully destroyed requested data."
  end
end
