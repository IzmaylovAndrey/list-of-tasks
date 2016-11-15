class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @project = Project.find(params[:project_id])
    @todo = @project.todos.create(todo_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
    @todo.destroy
    redirect_to project_path(@project)
  end

  def edit
    @project = Project.find(params[:project_id])
    @todos = @project.todos.all
  end

  def update
      @project = Project.find(params[:project_id])
      @todo = @project.todos.find(params[:id])

      if @todo.update(todo_params)
        redirect_to @project
      else
        render 'edit'
      end

  end

  def list
    @project = Project.find(params[:project_id])
    @todos = @project.todos.all
  end

  private
  def todo_params
      params.require(:todo).permit(:task, :is_completed)
  end
end
