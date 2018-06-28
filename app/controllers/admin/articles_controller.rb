class Admin::ArticlesController < AdminBaseController
  before_action :set_articles, only: [:show, :edit, :update, :destroy]
  # GET /admin/articles
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /admin/articles/1
  def show

  end

  # GET /admin/articles.new
  def new
    @article = Article.new
  end

  # GET /admin/articles/1/edit
  def edit

  end

  # POST /admin/articles
  def create
    @article = Article.new(articles_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to admin_article_path(@article), notice: 'News article was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT/admin/articles/1
  def update
    respond_to do |format|
      if @article.update(articles_params)
        format.html { redirect_to admin_article_path(@article), notice: 'News article was successfully updated.'}
      else
        format.html { render :edit }
      end
    end
  end

  #DELETE /admin/articles/1
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to admin_articles_url, notice: 'News article was successfully destroyed.' }
    end
  end


  private

    def set_articles
      @article = Article.find(params[:id])
    end

    def articles_params
      params.require(:article).permit(:title, :publish_time, :content, :status, :state)
    end
  
end