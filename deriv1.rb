#!/usr/bin/env ruby

w1,w2 = ARGV[0],ARGV[1]

def genome(word)
  gnm = []
  lng = word.length

  (1..lng).each {|bul|
    (0..lng-bul).each {|p|
      #puts "p=#{p} ; lng-bul=#{lng}-#{bul}=#{lng-bul}"
      (gnm[bul] ||= []) << word.slice(p,bul)
    }
    puts gnm[bul].inspect
  }
  gnm.flatten.compact
end
def diff a,b
  (b-a)+(a-b)
end
def xsect b,a 
  (a+b - diff(a,b)).uniq
end
a,b = genome(w1), genome(w2)
puts '===================='
puts diff(a,b).inspect
puts '===================='
puts xsect(a,b).inspect
