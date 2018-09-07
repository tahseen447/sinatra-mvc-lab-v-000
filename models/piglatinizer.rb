class PigLatinizer

  attr_reader :user_text

  def initialize()
  end

  def latinize
    new_word_array=[]
    words = @user_text.split(' ')
    words.each do |word|
      length= word.length
      first_letter = word[0]
      new_word =''
      new_word = word.slice(1..length-1)
      new_word += first_letter
      new_word += "ay"
      new_word_array << new_word
    end
    new_word_array.join(' ')
  end
end
