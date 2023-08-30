class CreateReviewQueues < ActiveRecord::Migration[7.0]
  def change
    create_table :review_queues do |t|
      t.integer :vocabulary_id
      t.date    :review_date

      t.timestamps
    end
  end
end
