class PigLatinizer

  attr_reader :user_text

  def initialize(text)
    @user_text = text
  end

  def latinize
    words = text.split(' ')
  end
end
