def word_counter(corpus,dico)
  arr_sortie = []
  hash_sortie = {}

  dico.each do |s_dico|
    count = 0
    corpus.downcase.split.each do |s_corpus|
      if s_corpus.include? s_dico
        count += 1
      end
    end
    if count != 0
      hash_sortie.merge!({s_dico => count})
    end
  end 
return hash_sortie
end



dictionnary_en = ["presented", "the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
shakespeare_integral = "\\wsl.localhost\Ubuntu-20.04\home\laneyrie\Formation_THP\3-Semaine_3(Ruby_On_Rails)\12-Gemfile\Projet_Thomas\lib\Shakespeare.txt"

# file = File.open("Shakespeare.txt")
# file_data = file.read
# file_data = file.readlines.map(&:chomp)

puts word_counter(shakespeare_integral, dictionnary_en)   #Ne fonctionne pas car ne lit que la 1ere ligne du fichier, il faudrait voir comment faire pour travailler en dur dans le fichier.