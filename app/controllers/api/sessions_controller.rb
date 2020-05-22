class API::SessionsController < Devise::SessionsController
    def create
      print 'you are in @user.session!'
      byebug
    end
  end