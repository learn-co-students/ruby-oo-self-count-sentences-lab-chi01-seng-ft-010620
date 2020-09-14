require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end 

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    results = self.split(' ').map do |block|
      block[-1] == "?" || block[-1] == "." || block[-1] == "!"
    end
    results.count(true)
  end

end