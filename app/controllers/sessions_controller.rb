class SessionsController < ApplicationController
    def new
    end
    
    def create
        user = User.where(email: params[:email], pw: params[:password]).take
        unless user.nil?
            session[:user_id] = user.id
            redirect_to '/'
        else 
            redirect_to '/sessions/error'
        end
        
    end
    
    def destroy
        reset_session
        redirect_to '/'
    end
    
    def error
    end
end
