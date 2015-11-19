@results = []
def analyze(paragraph)
  words = paragraph.gsub(/[^a-z ]/i, '').split(" ")
  word_lengths = []
  words.each do |word|
    word_lengths << word.length
  end
  word_lengths.uniq!

  word_lengths.each do |length|
    counter = 0
    words.each do |word|
      if length == word.length
        counter += 1
      end
    end
    @results << [length, counter]
  end
end

text = "The dragon is eating the dragon food!"
analyze(text)
print @results
