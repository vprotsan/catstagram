class HomeController < ApplicationController
  def index
    #render json: params
    #session.delete :wyncode_username
    session[:user_id] = 735
    redirect_to post_path
  end

  def post
    #you can array any array/hash like object
    #params is a hash like object
    #params super special object
    #params is populated for you
    #gets populated by POST body
    #when submittig a form, field of a form, become params
    #comes from url query string
    #from routes named SEGMENTS(start with a colon : - that's how we identify segments, by : (colon))
    #render json: params
    # render json: session
    # session[:wyncode_username] = 'abunsen'
    #you should store in cookies only what doesnt matter
    #in other cases, use https, encrypt cookies
    #use sessions when somebody is logged in
    # session[:user_id] = 735
    # redirect_to post_path
    message = session[:user_id] ? "logged in" : 'logged out'
    render plain: message

    #render json: session
  end
end

# <form action="/post" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="fRSNeM4X5nIxIZsMjjJMgxCCpjNdCr7ZHxyQ6xtlRelbZUyOL2MKzX90IkoKm/oNK86XUlbEJ5iRDsP+Y2/MIQ==">
#   <input type="submit" name="commit" value="Save changes" data-disable-with="Save changes">
# </form>
#points to post action
#localhost:3000/?students[]=auston&students[]=pk&students[]=angel
#http://localhost:3000/?user[name]=auston&user[age]=31
