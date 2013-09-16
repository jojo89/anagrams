class AddSortedField < ActiveRecord::Migration
  def up
    add_column :words, :word_sorted, :string

    Word.all.each do |word|
      word.word_sorted = word.anagramed
      word.save
    end 
  end

  def down
    remove_column :words, :word_sorted
  end
end
