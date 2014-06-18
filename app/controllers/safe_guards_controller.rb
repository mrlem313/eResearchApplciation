class SafeGuardsController < ApplicationController
  def index
    @safe_guards = SafeGuard.all
  end

  def show
    @safe_guard = SafeGuard.find(params[:id])
  end

  def new
    @safe_guard = SafeGuard.new
  end

  def create
    @safe_guard = SafeGuard.new(params[:safe_guard])
    if @safe_guard.save
      redirect_to @safe_guard, :notice => "Successfully created safe guard."
    else
      render :action => 'new'
    end
  end

  def edit
    @safe_guard = SafeGuard.find(params[:id])
  end

  def update
    @safe_guard = SafeGuard.find(params[:id])
    if @safe_guard.update_attributes(params[:safe_guard])
      redirect_to @safe_guard, :notice  => "Successfully updated safe guard."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @safe_guard = SafeGuard.find(params[:id])
    @safe_guard.destroy
    redirect_to safe_guards_url, :notice => "Successfully destroyed safe guard."
  end
end
