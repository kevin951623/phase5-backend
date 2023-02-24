class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.integer :transaction
      t.float :team1_odds
      t.float :team2_odds
      t.float :payout
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
