# text=File.open('words').read

# text.each_line do |t|
#    Word.create(word: t.chomp)
# end  


Word.all.each do |word|
  word.word = word.word.downcase
  word.word_sorted = word.word_sorted.downcase
  word.save
end
