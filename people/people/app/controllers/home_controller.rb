class HomeController < ApplicationController
  def index
    #@users = User.all
    # render 'another_home/another_index'
    # render file: '~/Desktop/ok_to_delete.txt'
    # render plain: 'Oops, here again'
    # render inline: 'The time is <%= Time.now %>'
    # render json: @users  #==>for API use
    # render body: nil
    # render layout: false
    # render options:
    # :layouts
    # :status
    # render :index, layout: 'simple'
    # if !params[:api_key]
    #   render plain: 'missing: api key', status: 400
    # end
    # render :index and return #=> returnn exits a method
    # puts 'render does not exist'
    # puts 'about to raise doubleRender Error'
    #
    # render :show

    # redirect_to '/users' #=>double redirect is bad, just like double render, stop program from running by adding AND RETURN
    # redirect_to users_path
    # redirect_back(fallback_location: home_index_path)
    head 400

  end
end
