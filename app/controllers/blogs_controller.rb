class BlogsController < ApplicationController
	def index
		@blogs = Blog.all
		@blog = Blog.new
		@recents = Blog.all.limit(10).reverse
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.create(blog_params)
		if @blog.save
			blogs_path
		else
			render 'new'
		end
	end

	private
		def blog_params
			params.require(:blog).permit(:title, :content, :category, :tags)
		end
end
