class TasksController < ApplicationController
  def index
  end

  def show
  
  @task = Task.find(params[:id])
  
  end

  def new
  
  @task = Task.new
  
  end

  def create
  
  @task = Task.create params[:task]
    redirect_to @task
  
  end

  def edit
  end

  def update
  end

  def destroy
  end
end