class PigLatinizer 
  
  # attr_reader :text 
  
  # def initialize(text)
  #   @text=text
  # end 
  
  # def const_latinize(text)
  #   consonents="bcdfghjklmnpqrstvwxyz"
  #   con=[]
  #   s=text.split("")
  #   i=0
  #   flag=true
  #   while flag==true 
  #     con << s[i]
  #     s.delete_at(i)
  #     if s.empty?
  #       flag=false
  #     else consonents.include?(s[i])==false
  #       flag=false 
  #     end 
      
  #   end 
  #   s.join.concat(con.join).concat("ay")
  # end 
  
   
  # def final_latinizer(word)
  #   vowels="aeiou"
  #   with_vowels_arr=[]
  #   c=word.split()
  #   c.each do |word|
  #     if vowels.include?(word[0].downcase)
  #       with_vowels_arr << word
  #       with_vowels_arr[with_vowels_arr.index(word)].concat("way")
  #     else
  #       with_vowels_arr << const_latinize(word)
  #     end 
  #   end 
    
  #   with_vowels_arr.join(" ")
  # end
 

  # def to_pig_latin(word) #pig latinizes a single word
  #   if word.downcase.index(/[aeiou]/) == 0
  #     word.concat("way")
  #   else
  #     vowel_index = word.index(/[aeiou]/)
  #     front_end = word.slice!(0..vowel_index-1)
  #     word + front_end.concat("ay")
  #   end
  # end
  
  # def piglatinize(phrase)
  #   arr=[]

  #   phrase.split(" ").each do |word|
  #     arr << to_pig_latin(word)
  #   end 
    
  #   arr.join(" ")
  # end
  
  def to_pig_latin(word) #pig latinizes a single word
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
      arr<<pig_latinize(word)
    end 
    arr.join(" ")
  end
  
  
end 