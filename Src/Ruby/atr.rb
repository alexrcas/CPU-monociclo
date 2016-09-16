=begin
  Busca la palabra word en el diccionario y devuelve su traducción o la cadena "xxxxxx" si no la encuentra.
  Si se trata de un número devuelve su traducción a binario empleando el número de bits especificado por wd.
=end
def translate_word(word, wd)
    unless word.numeric?
            File.open('dictionary.dic', 'r') do |f|
                while line = f.gets
                    if line[word]
                        line = line.split.last
                        return line
                    end
                end
                puts "AVISO. No hay traduccion para #{word} (traduciendo por \"xxxxxx\")" 
                return "xxxxxx"
            end
    else
        word = word.to_i
        return word.to_bin(wd)
    end
end

=begin
  Traduce una línea entera en ensamblador a una línea en binario.
=end
def translate_line(line)
    mstr = String.new()
    words = line.split()
    
    if line.include? "LI"
        mstr = translate_word(words[1], 0) + translate_word(words[2], 8) + translate_word(words[0], 0)
    end
    
    if line.include? "RDP"
        mstr = translate_word(words[1], 0) + "0000" + translate_word(words[2], 2) + translate_word(words[0], 0)
    end
    
    if line.include? "WDP"
        mstr = "0000" + translate_word(words[1], 4) + translate_word(words[2], 2)  + translate_word(words[0], 0)
    end
    
    if line.include? "WIP"
        mstr = translate_word(words[1], 8) + translate_word(words[2], 2) + translate_word(words[0], 0)
    end
    
    if line.include? "JL" or line.include? "BZ" or line.include? "BNZ" or line.include? "GO"
        mstr = translate_word(words[1], 10) + translate_word(words[0], 0)
    end
    
    if line.include? "RETURN"
       mstr = "0000000000" + translate_word(words[0], 0)
    end
    
    if line.include? "RELJ"
        mstr = translate_word(words[1],10) + translate_word(words[0], 0)
        mstr = mstr.gsub('.', '1')
    end
    
    if line.include? "ADD" or line.include? "SUB" or line.include? "AND" or line.include? "OR"
        mstr = translate_word(words[1], 0) + translate_word(words[2], 0) + translate_word(words[3], 0) + translate_word(words[0], 0)
    end
    
    if line.include? "ASG" or line.include? "ONC" or line.include? "TWC"
        mstr = translate_word(words[1], 0) + "0000" + translate_word(words[2], 0) + translate_word(words[0], 0)
    end
    
    puts mstr;
    return mstr;
end

=begin
  Traduce el fichero de nombre name.
=end
def translate_file(name)
   fd = File.open('progfile.dat', 'w')
    File.open(name) do |f|
        while line = f.gets
            fd.puts translate_line(line)
        end
    end
end

=begin
  Procesa el fichero y produce un fichero temporal sin comentarios
=end
def clean_file(name)
    puts "Ignorando comentarios..."
    fd = File.open('progc.tmp', 'w')
    File.open(name, 'r+') do |f|
        while line = f.gets
            unless line.include? "*"
                fd.puts line
            end
        end
    end
    fd.close
end

=begin
  Sustituye las etiquetas por el número de línea en que aparecen.
=end
def translate_labels()
    puts "Sustituyendo etiquetas..."
    lh = Hash.new
    File.open('progc.tmp', 'r+') do |f|
        i = 0
        while line = f.gets
            if (line.split.size == 1) & !(line.include? "NOP")
                lh[i] = line
            end
            if (line.split.size > 1) | (line.include? "NOP")
                i+= 1
            end
        end
    end
    fd = File.open('progt.tmp', 'w')
    File.open('progc.tmp', 'r') do |f|
        while line = f.gets
            if (!(line.split.size == 1) & !(line.include? "NOP"))
                if (line.include? "JL") | (line.include? "BZ") | (line.include? "BNZ") | (line.include? "GO") 
                    mstr = line.split
                    fd.puts mstr[0] + " " + lh.key(mstr[1]+"\n").to_s
                else
                    fd.puts line
                end
            else
                if line.include? "RETURN" or line.include? "NOP"
                    fd.puts line
                end
            end
        end
    end
    fd.close
end

=begin
  Limpia los ficheros temporales que han sido necesarios para las sucesivas etapas.
=end
def delete_tmp
    File.delete('progc.tmp')
    File.delete('progt.tmp')
end

class String
  def numeric?
    Float(self) != nil rescue false
  end
end

class Integer
  def to_bin(width)
    '%0*b' % [width, self]
  end
end

=begin
  Función principal del programa. Recibe el nombre del fichero por argumento y devuelve un progfile.dat de salida.
=end
if !(ARGV[0].nil?)
    if File.exist?(ARGV[0])
        clean_file(ARGV[0])
        translate_labels
        translate_file('progt.tmp')
        delete_tmp
    else
        puts "No se encuentra el fichero!"
    end
else
    puts "Se requiere el nombre del programa como argumento!"
end
