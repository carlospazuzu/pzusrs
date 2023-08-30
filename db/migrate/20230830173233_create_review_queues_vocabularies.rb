class CreateReviewQueuesVocabularies < ActiveRecord::Migration[7.0]
  def change
    create_table :review_queues_vocabularies do |t|
      t.belongs_to :review_queue
      t.belongs_to :vocabulary

      t.timestamps
    end
  end
end
