class PagesController < ApplicationController

  def index
    gh = GithubFetcher.new
    @repos = gh.get_repos
    @user = gh.user
    @username = Username.new
  end


end
