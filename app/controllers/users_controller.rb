class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
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

    def update
        current_user.update!(user_params)
        render json: current_user
    end

private

    def user_params
        params.permit(:name, :username, :password, :password_confirmation, :email, :balance)
    end

end
