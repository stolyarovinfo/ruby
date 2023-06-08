
def howMany
    puts "Сколько покемонов вы хотите добавить? "

    count = gets.chomp

    creating(count)
end

def creating(count)
    
    count = count.to_i  

    pockemons = {}

    i = 0

    while count != 0

        puts "=========="
        puts "Введите имя покемона: "
        name = gets.chomp
        puts "Введите цвет покемона: "
        color = gets.chomp

        pockemons[name] = color

        i += 1
        count -=1
    end

    

    print(pockemons)

end

def print(pockemons)

    puts pockemons

end

howMany