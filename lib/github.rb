require 'octokit'

module Github
  class Github
    def client
      @client ||= ::Octokit::Client.new access_token: ENV['GITHUB_TOKEN']
    end

    def pull_requests(repo)
      json = client.pull_requests repo

      result = json.inject([]) do |_result, pr|
        _result << { url: pr[:html_url], title: pr[:title], user: pr[:user][:login] }
      end
      result
    rescue => e
      nil
    end
  end
end
