require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_string = self.gsub(/[.!?]/, ' ')
    array = new_string.split('  ')
    array.delete(" ")
    array.length
  end
end