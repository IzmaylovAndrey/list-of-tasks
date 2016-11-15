class TodosController < ApplicationController
  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @project = Project.find(params[:project_id])
    @todo = @project.todos.create(todos_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
    @todo.destroy
    redirect_to project_path(@project)
  end

  private
  def todos_params
      params.require(:todo).permit(:task, :is_completed)
  end
end
