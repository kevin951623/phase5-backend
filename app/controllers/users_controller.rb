class UsersController < ApplicationController

        # no auth needed to create a new user
        skip_before_action :authorize, only: [:index, :create, :me, :show]
    
        def index
            users = User.all
            render json: users
        end

        #show a user with bets
        def show
            users = User.find(params[:id])
            render json: users, serializer: UserWithBetsSerializer 
        end

    
        # Sign Up Feature
        def create
            # Save a new user to the database with their username, encrypted password, and balance
            user = User.create!(user_params)
            # Save the user's ID in the session hash
            session[:user_id] = user.id
            # Return a JSON response with the user's ID, name, username, and balance; and an HTTP status code of 201 (Created)
            render json: user, status: :created
        end
    
        # Auto-login Feature
        def me
                render json: current_user, status: :ok
        end
        
        #Update user balance
        def update
        current_user = User.find(params[:id])
        current_user.update!(update_balance_params)
        render json: current_user
        end


        private
    
        def user_params
            params.permit(:name, :username, :password)
        end

        def update_balance_params   
            params.permit(:balance)
        end
    
      
    end