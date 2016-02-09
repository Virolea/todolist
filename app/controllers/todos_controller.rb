class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save

    redirect_to todo_path(@todo)
  end

  def update
    @todo.update(todo_params)

    redirect_to todo_path(@todo)
  end

  def destroy
    @todo.delete
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

end
