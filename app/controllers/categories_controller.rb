class CategoriesController < ApplicationController
  before_action :set_categorie, only: [:show, :edit, :update, :destroy]

  def index
    @categorie = Categorie.all
  end

  def new
    @categorie = Categorie.new
  end

  def create
    @categorie = Categorie.new(categorie_params)
    @categorie.save
    redirect_to categorie_path(@categorie)
  end

  def show
  end

  def edit
    render :edit_categorie
  end

  def update
    if @categorie.update(categorie_params)
      # Successful update
      redirect_to @categorie, notice: 'The category was successfully updated.'
    else
      # Validation errors or other issues
      render :edit_categorie
    end
  end

  def destroy
    @categorie.destroy
    redirect_to categorie_path
  end

  private

  def categorie_params
    params.require(:categorie).permit(:name, :description)
  end

  def set_categorie
    @categorie = categorie.find(params[:id])
  end

end
