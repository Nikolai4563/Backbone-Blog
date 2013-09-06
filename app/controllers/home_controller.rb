class HomeController < ApplicationController
  respond_to :html, :json

  def index
    @posts = Post.includes(:user)
    respond_to do |format|
      format.html { render :text => '', :layout => 'application'}
      format.json { render :json => @posts }
    end
    #end
  end
  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html { render :text => '', :layout => 'application'}
      format.json { render :json => @post }
    end
  end
  def new
    render :text => "", :layout => "application"
  end
  def create
    @post = current_user.posts.build(:title=> params[:title], :description=>params[:description])
    @post.save!
    render :json => @post
  end
end