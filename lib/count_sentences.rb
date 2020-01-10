require 'pry'

class String
    attr_accessor :count

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
    sentence_array = self.split(/\.|\?|\!/).delete_if do |sentence|
      sentence.length < 2
    end
    sentence_array.length
  end

end
# .split(/\,|\!|\@|\$/)

# / /

# split bookends are //
# backslash before each new thing