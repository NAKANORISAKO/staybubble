class FoldersController < ApplicationController

	def index
		@folders = Folder.all
	end

	def new
		@folder = Folder.new
	end

	def edit
		@folder = Folder.find(params[:id])
	end

	def update
		folder = Folder.find(params[:id])
		if folder.update(folder_params)
			redirect_to :action => "show", :id => folder.id
		else
			redirect_to :action => "new"
		end
	end
	

	def create
		folder = Folder.new(folder_params)
		folder.user_id = current_user.id
		if folder.save
			redirect_to :action => "index"
		else
			redirect_to :action => "new"
		end
	end

	

	def show
	
		@folder = Folder.find(params[:id])
		# @post = Post.find(params[:id])

 		# @bubbles = Bubble.where(@post.folder_name)
	end
	

	
	
	
	def destroy
		folder = Folder.find(params[:id])
		folder.destroy
		redirect_to action: :index
	end
	
	
	private
	def folder_params
		params.require(:folder).permit(:folder_name, :post_id)
	end
	

end
