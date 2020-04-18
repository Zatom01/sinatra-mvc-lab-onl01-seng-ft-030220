class PigLatinizer 
  
  def to_pig_latin(word) 
    vowels="aeiou"
    consonents="bcdfghjklmnpqrstvwxyz"
  
    if vowels.include?(word[0].downcase)
      word_latinized=word.concat("way")
      word_latinized
  
    elsif consonents.include?(word[0].downcase) 
      con=[]
      s=word.split("")
      flag=true
      i=0
      while flag 
        con << s[i]
        s.delete_at(i)
        if s.empty? || !consonents.include?(s[i]) 
          flag=false
        end 
      end 
      s.join.concat(con.join).concat("ay")
    end 
  end
  
  def piglatinize(phrase)
    splitted=phrase.split()
    arr=[]
    splitted.collect do |word|
      arr << to_pig_latin(word)
    end 
    arr.join(" ")
  end
  
  
end 