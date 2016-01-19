
=begin
       Prefix Verb   URI Pattern                  Controller#Action
welcome_index GET    /welcome/index(.:format)     welcome#index
     articles GET    /articles(.:format)          articles#index
              POST   /articles(.:format)          articles#create
  new_article GET    /articles/new(.:format)      articles#new
 edit_article GET    /articles/:id/edit(.:format) articles#edit
      article GET    /articles/:id(.:format)      articles#show
              PATCH  /articles/:id(.:format)      articles#update
              PUT    /articles/:id(.:format)      articles#update
              DELETE /articles/:id(.:format)      articles#destroy
         root GET    /                            welcome#index
=end

# Use instance variable (prefix with an "@" to parse value to HTML template "view")
class ArticlesController < ApplicationController

	# GET - List all articles
	def index
		@articles = Article.all
	end

	# GET - Find and list one particular article
	def show
		@article = Article.find(params[:id])
	end

	# GET - new article page with a submit button (trigger the POST create method)
	def new
		@article = Article.new
	end

	# GET - edit article page with a submit button (trigger the POST update method)
	def edit
		@article = Article.find(params[:id])
	end

	# POST - create new article instance
	def create
		#render plain: params[:article].inspect
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article  # show method
		else
			render 'new'
		end
	end

	# POST - edit existing article instance
	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article  # show method
		else
			render 'edit'
		end
	end

	def destroy
	end

	# hid these variables from direct instance access.
	private
		def article_params
			params.require(:article).permit(:title, :text)
		end

end
