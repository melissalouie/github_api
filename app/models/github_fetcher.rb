class GithubFetcher
  attr_reader :client

  def initialize
    @client = Octokit::Client.new(:access_token => ENV['ACCESS_TOKEN'])
  end

  def get_repos
    @client.user.rels[:repos].get.data
  end

end
