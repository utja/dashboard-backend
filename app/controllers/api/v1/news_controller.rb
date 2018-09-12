class Api::V1::NewsController < ApplicationController

  def index
    render json: [{id: 1, title: 'Hello World', body: 'Be a Programmer'}, {id: 2, title: 'Womp Womp', body: 'Wompity Womp Womp'}]
  	# posts = Post.all
    # render json: {status: 'SUCCESS', message: 'Loaded all posts', data: posts}, status: :ok
  end

end
