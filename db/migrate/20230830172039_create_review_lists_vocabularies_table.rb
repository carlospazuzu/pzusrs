class CreateReviewListsVocabulariesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :review_lists_vocabularies do |t|
      t.belongs_to :vocabulary
      t.belongs_to :review_list

      t.timestamps
    end
  end
end
