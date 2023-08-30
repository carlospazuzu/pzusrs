class CreateReviewLists < ActiveRecord::Migration[7.0]
  def change
    create_table :review_lists do |t|
      t.integer :vocabulary_id

      t.timestamps
    end
  end
end
