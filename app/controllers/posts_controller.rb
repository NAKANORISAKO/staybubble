class PostsController < ApplicationController

	def new
		@bubble = Bubble.find(params[:id])
		@folder = Folder.where(user_id: current_user.id)
    @post = Post.new
	end

	def create
		post = Post.new(post_params)

    if post.save!
      redirect_to controller: :bubbles, action: :index
    else
      redirect_to controller: :bubbles, action: :show
    end
  end

	def show
		@folder = Folder.find(params[:id])
		@post= Post.where(folder_name: @folder.folder_name)
	end

	def destroy
		post = Post.find(params[:id])
		a = post.folder_id
		post.destroy
		redirect_to folder_path(a)

	end

	private
	def post_params
		params.require(:post).permit(:id, :folder_id,:bubble_id)
	end
end
