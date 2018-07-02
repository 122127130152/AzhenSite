class ArticlesController < WebBaseController

  before_action :set_articles, only: [:show, :edit, :update, :destroy]

  def index 
    @articles = Article.where(:status => 2, :state => true).order(created_at: :desc).paginate(:page => params[:page], :per_page => 10)
  end

  def show

  end


  private

    def set_articles
      @article = Article.find(params[:id])
    end

end