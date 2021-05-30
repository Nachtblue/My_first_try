require 'enumerator'
file = File.open("leetcode.txt")
feladatok=0
File.foreach(file) { |line| if line.match(/Hard/)
                              feladatok +=1
                            end }

File.write("eredmeny.txt", "Leetcode has #{file.readlines.size/2} Hard challenges available so far")
File.write("eredmeny.txt", "\nBy reading each lines and searching for hard, we detected #{feladatok} db challenges",mode:"a")
File.write("eredmeny.txt", "\nAlternatively we could do these methods as well :\n#{file.methods.sort.to_a.join("\n")}", mode:"a")
File.rename("eredmeny.txt", "renamed_eredmeny.txt")
file.close