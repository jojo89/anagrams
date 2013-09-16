class AddIndex < ActiveRecord::Migration
  def change
    add_index(:words, :word_sorted)
  end
end
