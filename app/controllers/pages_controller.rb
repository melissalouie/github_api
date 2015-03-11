class PagesController < ApplicationController

  def index
    gh = GithubFetcher.new
    @repos = gh.get_repos
  end


end
