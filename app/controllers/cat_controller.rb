class CategoriesController< ApplicationController
  def index
    @categories = Category.order(:title).limit(50)
  end
  def show
    @category = Category.includes(:tweets)
    order('tweets.tweeted_at desc').find(params[:id])
  end
  def new
    @category = Category.new
    respond_with(@category)
  end
  def create
    @category = Category.create(params[:category])
    respond_with(@category)
  end
  def edit
    @category = Category.find(param[:id])
  end
  def update
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category])
    respond_with(@category)
  end
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_with(@category)
  end
end
