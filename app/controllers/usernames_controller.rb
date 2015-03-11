class UsernamesController < ApplicationController
  def new
    @username = Username.new
  end

  def create
    @username = Username.new(username_params)
    @username.save
    redirect_to username_path(@username)
  end

  def show
    @username = Username.find(params[:id])
    gh = GithubFetcher.new
    @info = gh.get_user(@username.name)
    @repos = @info.rels[:repos].get.data
  end

  private
  def username_params
    params.require(:username).permit(:name)
  end
end
