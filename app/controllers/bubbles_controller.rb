class BubblesController < ApplicationController

	before_action :authenticate_user!, only: [:new, :create]

def top
end

def index
	if params[:search] != nil && params[:search] != ' ' && params[:search] != '　'
		#部分検索かつ複数検索
		search = params[:search]
		@bubbles = Bubble.joins(:user).where("title LIKE ? OR name LIKE ?", "%#{search}%", "%#{search}%")
	else
		@bubbles = Bubble.all
	end

end

def new
	@bubble = Bubble.new
end

def create
	bubble = Bubble.new(bubble_params)
	bubble.user_id = current_user.id
	if bubble.save
		redirect_to :action => "index"
	else
		redirect_to :action => "new"
	end
end

def show
	@bubble = Bubble.find(params[:id])
end

def edit
	@bubble = Bubble.find(params[:id])
end

def update
	bubble = Bubble.find(params[:id])
	if bubble.update(bubble_params)
		redirect_to :action => "show", :id => bubble.id
	else
		redirect_to :action => "new"
	end
end

def destroy
	bubble = Bubble.find(params[:id])
	bubble.destroy
	redirect_to action: :index
end


private
def bubble_params
	params.require(:bubble).permit(:title, :label, :link, :content, :image)
end

end
