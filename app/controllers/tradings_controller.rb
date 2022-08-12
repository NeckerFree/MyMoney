class TradingsController < ApplicationController
  before_action :authenticate_user!
  def index
    # puts 'Params trading'
    # puts params
    @category = Category.includes(:tradings).find(params[:category_id])
  end

  def new
    @category = Category.find(params[:category_id])
  end

  def create
    @trading = Trading.new(trading_params)
    @trading.author_id = current_user.id
    if @trading.save
      @trading_category = TradingCategory.new(category_id: params[:category_id], trading_id: @trading.id)
      @trading_category.save
      flash[:notice] = 'transaction was successfully created.'
    else
      flash[:error] = 'Error creating transaction'
    end
    redirect_to category_tradings_path, category_id: trading_params[:category_id]
  end

  def update
    respond_to do |_format|
      if @trading.update(trading_params)
        flash[:notice] = 'transaction was successfully created.'
      else
        flash[:error] = 'Error creating transaction'
      end
    end
  end

  def destroy
    if @trading.destroy
      flash[:notice] = 'transaction was successfully created.'
    else
      flash[:error] = 'Error creating transaction'
    end
  end

  def trading_params
    params.require(:trading).permit(:name, :amount)
  end
end
