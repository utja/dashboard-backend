require 'news-api'

class Api::V1::NewsController < ApplicationController
  
  def index
    n = News.new(ENV["THEWORD"])
    news = n.get_top_headlines(country: 'us', language: 'en')
    # render json: [{id: 1, title: 'Hello World', body: 'Be a Programmer'}, {id: 2, title: 'Womp Womp', body: 'Wompity Womp Womp'}]
    render json: news
  	# posts = Post.all
    # render json: {status: 'SUCCESS', message: 'Loaded all posts', data: posts}, status: :ok
  end

end
