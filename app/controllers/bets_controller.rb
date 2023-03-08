class BetsController < ApplicationController
    # skip_before_action :authorize, only: [:index, :create, :destroy]
    
    #show all bets
    def index
        bets = Bet.all
        render json: bets
    end

    def show
        bet = Bet.find(params[:id])
        render json: bet, status: 200
    end

    #create a new bet
    def create
        bet = Bet.create!(bet_tranasaction_params)
        render json: bet, status: :created
    end


    private

    def bet_tranasaction_params
        params.permit(:user_id, :game_id, :payout, :bet_amount)
    end


    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
  
end
