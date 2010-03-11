class TasksController < ApplicationController

  before_filter :find_task, :only => [:show, :edit, :update]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new params[:task]
    if @task.save
      redirect_to tasks_path
    else
      render :action => 'new'
    end
  end

  def  show
  end

  def edit    
  end

  def update    
    @task.update_attributes params[:task]
    if @task.save
      redirect_to tasks_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @task = Task.find params[:id]
    @task.destroy
    redirect_to tasks_path
  end


  private

    def find_task
      @task = Task.find params[:id]
    end
end
