class CategoriesController < ApplicationController

  before_filter :find_category, :only => [:show, :edit, :update,  :destroy]
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new params[:category]
    if @category.save
      redirect_to categories_path
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    @category.update_attributes [:category]
    if @category.save
      redirect_to categories_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  def find_category
    @category = Category.find params[:id]
  end
end
