class CategoriesController < ApplicationController
  def index
    puts session[:current_user]
    @categories = Category.where(author_id: current_user.id)
  end

  def new
    @images = Dir.glob('app/assets/images/Sports/*.png')
  end

  def create
    @category = category.new(category_params)
    @category.author_id = current_user.id

    if @category.save
      flash[:notice] = 'Category was successfully created.'
    else
      flash[:error] = 'Error creating category'
    end
  end

  def update
    if @category.update(category_params)
      flash[:notice] = 'Category was successfully updated.'
    else
      flash[:error] = 'Error updating category'
    end
  end

  def destroy
    # @tradings = @category.expenses
    # @tradings.each(&:destroy)
    if @category.destroy
      flash[:notice] = 'category was successfully destroyed.'
    else
      flash[:error] = 'Error deleting category'
    end
  end
end
