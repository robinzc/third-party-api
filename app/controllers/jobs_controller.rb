class JobsController < ApplicationController

  def index
    @jobs = HTTP
    .headers({
      "Username" => "Bearer #{Rails.application.credentials.third-party-api[:api_key]}"
    })
    .get("https://www.reed.co.uk/api/1.0/search")
    .parse
    render "index.json.jb"
    
  end

end
