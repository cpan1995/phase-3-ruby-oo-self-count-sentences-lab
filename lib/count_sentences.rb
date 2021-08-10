require 'pry'

class String

  def sentence?
    self.include? "."
  end

  def question?
    self.include? "?"

  end

  def exclamation?
    self.include? "!"

  end

  def count_sentences
    delimiters = ["!", "?", "."]
    newArray = []
    self.split(Regexp.union(delimiters)).select do |sentence|
      unless sentence == ""
        newArray << sentence
      end
    end
    newArray.length
  end
end

pp "Hi, my name is Sophie.".sentence?