require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end
 

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentence_split = self.split(/\.|\?|\!/).reject(&:empty?)
    sentence_split.count
  end
end

#monkey patching: the practice of adding methods to or altering Ruby's built-in classes (ie. adding an instance method to Ruby's String class)
#--dangerous, and should almost never be used in real application