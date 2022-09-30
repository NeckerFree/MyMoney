class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    puts session[:current_user]
    @categories = Category.where(author_id: current_user.id)
  end

  def new
    # @images = Dir.glob('app/assets/images/Categories/*.png')
    @images= Dir.glob("#{Rails.root}/app/assets/images/Categories/*.png") 
  end

  def create
    puts 'Parametros new cat'
    puts params
    @category = Category.new(category_params)
    @category.author_id = current_user.id

    if @category.save
      flash[:notice] = 'Category was successfully created.'
    else
      flash[:error] = 'Error creating category'
    end
    redirect_to categories_path
  end

  def update
    if @category.update(category_params)
      flash[:notice] = 'Category was successfully updated.'
    else
      flash[:error] = 'Error updating category'
    end
  end

  def destroy
    puts 'Delete category'
    puts params
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:notice] = 'category was successfully destroyed.'
    else
      flash[:error] = 'Error deleting category'
    end
    redirect_to categories_path
  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
