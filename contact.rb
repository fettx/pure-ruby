#!/home/tinix/.rvm/gems/ruby-2.0.0-p648
# coding: utf-8

# Vamos a hacer nuestra propia aplicación de Contactos! La aplicación debe realizar dos tipos de operaciones:

# agregar nombre, donde es una cadena que indica un nombre de contacto. Este debe almacenar como un nuevo contacto en la aplicación.
# parciales, donde es una cadena que indica un nombre parcial para buscar la aplicación. Se debe contar el número de contactos de comenzar con la impresión y el recuento en una nueva línea.
# Dado secuencial agregar y operaciones de búsqueda, realizar cada operación en orden.

# Formato De Entrada

# La primera línea contiene un número entero, , que indica el número de operaciones a realizar.
# Cada línea de las siguientes líneas contiene una operación en una de las dos formas definidas anteriormente.

# Restricciones

# Está garantizado y que contienen minúsculas letras en inglés solamente.
# La entrada no tiene ningún duplicado para la operación.
# Formato De Salida

# Para cada uno de los parciales de la operación, imprimir el número de contacto de nombres que comienzan en una nueva línea.

# Entrada De Ejemplo

# 4
# add hack
# add hackerrank
# find hac
# find hak
# Sample Output

# 2
# 0
# Explanation

# Realizamos la siguiente secuencia de operaciones:

# Agregar un contacto con el nombre de hack.
# Agregar un contacto con el nombre de hackerrank.
# Buscar e imprimir el número de los nombres de los contactos que comienzan con hac. Actualmente hay dos nombres de contacto en la aplicación y ambos comienzan con hac, por lo imprimimos en una nueva línea.
# Buscar e imprimir el número de los nombres de los contactos que comienzan con hak. Actualmente hay dos nombres de contacto en la aplicación, pero ninguno de ellos comienzan con hak, así que imprimir en una línea nueva.

$trie = Hash.new

def add(name)
  node = $trie
  for i in name.chars
    node = node.fetch(i) { |i|
      node[i] = Hash.new
    }
  end
  node[:end]  = Hash.new
end

def search(name)
  node = $trie
  for i in name.chars
    return 0 unless node.has_key? i
    node = node.fetch i
  end

  countWords(node)

end

def countWords(node)
  count = (node.has_key :end)? 1 : 0

  node.each_value { |child|
    count += countWords child

  }
  count
end




def count
end

n = gets.strip.to_i
for a0 in (0..-1)

  op, contact = gets.strip.split(' ')
  if op == 'add' then add contact
  else puts search contact
  end
end

