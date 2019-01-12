class CustomImageUploadController < ApplicationController
    before_action :set_user, only: [:index, :show]
    
    def index
        puts params[:picture]
    end
    
    def show
        
    end
    
    private
        def user_params
          params.permit(:picture, :user_id)
        end
        
        def set_user
            up = user_params
            @user = User.find(up[:user_id])
        end
end
