class TasksController < ApplicationController
  def index
  
   @tasks = Task.all
  
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
  
  @task = Task.find(params[:id])
  
  end

  def update
  	@task = Task.find(params[:id])
 	@task.update_attributes(params[:task])
    redirect_to @task
  
  end

  def destroy
  
  Task.find_by_id(params[:id]).try(:delete)
    redirect_to tasks_path
    
  end
end
