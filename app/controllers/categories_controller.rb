class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to category_path(@category)
  end

  def show
  end

  def edit
    render :edit_category
  end

  def update
    if @category.update(category_params)
      # Successful update
      redirect_to @category, notice: 'The category was successfully updated.'
    else
      # Validation errors or other issues
      render :edit_category
    end
  end

  def destroy
    @category.destroy
    redirect_to category_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :description)
  end

  def set_category
    @category = category.find(params[:id])
  end

end
