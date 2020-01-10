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
    # binding.pry
    string_split = self.strip.split(/[.!?]+(?=\s|\z)/)  
    #(?=\s|\z)/) is a positive lookahead, requiring the match 
    #to be immediately followed by a whitespace character or the end of the string.
    string_split.length
  end
  
end