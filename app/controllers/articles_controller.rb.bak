class ArticlesController < ApplicationController
  

  before_filter :require_login, :except=>[:index,:show]


  # GET /articles
  # GET /articles.xml
  def index
    @articles = Article.all
    @tags = ["科技创新","知识产权","科技奖励"]
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new
    # @tags = ["科技奖励","知识产权"]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(params[:article])
    #@article.tag_list = "tt,mm,zz"
    respond_to do |format|
      if @article.save
        format.html { redirect_to(@article, :notice => 'Article was successfully created.') }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /search
  def search
    @articles = Article.where("tag = ?", params[:tag])
    respond_to do |format|
      format.html # search.html.erb
      format.xml  { render :xml => @article }
    end
  end
  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to(@article, :notice => 'Article was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to(articles_url) }
      format.xml  { head :ok }
    end
  end
end
