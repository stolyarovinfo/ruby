PATH = "balance.txt"
$balance = 100.0

def proc
    if File.exist?(PATH)
        f = File.open(PATH)
        $balance = f.readline.to_s[2..-5].to_f
    end

    inp = "-"
    puts "
    D - Ввести деньги
    W - Вывести деньги
    B - Проверить баланс
    Q - Выход
    "

    while inp != "q" do
        inp = gets.chomp.downcase

        if inp == "d"
            deposit
        elsif inp == "w"
            withdraw
        elsif inp == "b"
            puts $balance
        elsif inp == "q"
            break
        else 
            puts "Неизвестная команда"
        end
    end 
    
    file = File.open(PATH, 'w')
    file.puts $balance
    file.close
end

def withdraw 
    puts "Введите сумму: "
    num = gets.to_f
    
    if num < 0 or num > $balance
        puts "Сумма меньше нуля или превышает баланс"
    else 
        $balance = $balance - num
    end

    puts $balance
end

def deposit
    puts "Введите сумму: "
    num = gets.to_f
    if num < 0
        puts "Число меньше нуля"
    else 
        $balance = $balance + num
    end

    puts $balance
end




proc