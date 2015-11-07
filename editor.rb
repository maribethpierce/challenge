@results = []
def analyze(paragraph)
  @words = paragraph.gsub(/[^0-9a-z ]/i, '').split(" ")
  @words.each do |word|
    word.downcase!
  end
  @unique_words = @words.uniq
  @unique_words.each do |word|
    number = @words.count(word)
    @results << [word, number]
  end
end

text = "The dragon is eating the dragon food!"
analyze(text)
print @results
