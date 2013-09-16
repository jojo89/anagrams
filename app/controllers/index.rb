get '/' do
  # Look in app/views/index.erb
  erb :index
end

get "/:word" do
  @word = params[:word]
  word = params[:word].split("").sort.join
  results = Word.where(word_sorted: word)
  @result_words = []
  # p results
  results.each do |word|
    @result_words << word.word if word.word != @word
  end
  erb :index
end  

# get "/:word" do
#   @word = params[:word]
#   @results = []
#   Word.all.each do |x|
#     @results << x.word if x.anagramed == @word.split("").sort.join
#   end
#   erb :index
# end 
