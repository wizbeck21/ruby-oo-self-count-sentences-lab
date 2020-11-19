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
   self.split(/\.|\!|\?/).delete_if {|word| word.length < 2}.length
  end
end

#using regexp you can split the string by multiple punctuations. 
#/\p/ the backslash and symbol p, indicate it will split wherever 
#there is a p(symbol) and a space