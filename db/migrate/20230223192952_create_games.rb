class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :team1_name
      t.integer :team1_score
      t.boolean :team1_status
      t.string :team2_name
      t.integer :team2_score
      t.boolean :team2_status
      t.string :sports

      t.timestamps
    end
  end
end
