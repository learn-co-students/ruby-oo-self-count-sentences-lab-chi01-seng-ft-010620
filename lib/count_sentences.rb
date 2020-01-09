require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end
    
  def count_sentences
    split_sentence = self.split(/[.?!]/)

    removed_blanks = split_sentence.reject do |sentence|
      
      sentence.empty?
    end

    sentence_count = removed_blanks.count
  end
end

"this is a sentence.".count_sentences