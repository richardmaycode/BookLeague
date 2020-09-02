class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.belongs_to :book, null: false, foreign_key: true
      t.belongs_to :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
