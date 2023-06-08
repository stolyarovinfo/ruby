PATH = "name.txt"
TEMP = "temp.txt"

def find(id)
    result = nil
    file = File.open PATH
    id.times{ result = file.gets }
    puts result
end

def index
    File.foreach(PATH) {|line| puts line}
end

def where(pattern)
    File.foreach(PATH) do |actor|
        if actor.include?(pattern)
            puts actor
        end
    end
end


def update(id, name)
    file = File.open(TEMP, 'w')
    File.foreach(PATH).with_index do |actor, index|
        file.puts(id == index ? name : actor )
    end
    file.close
    File.write(PATH, File.read(TEMP))
    File.delete(TEMP) if File.exist?(TEMP)
end

def delete(id)
    file = File.open(TEMP, 'w')
    File.foreach(PATH).with_index do |actor, index|
        if id != index
            file.puts actor
        end
    end
    file.close
    File.write(PATH, File.read(TEMP))
    File.delete(TEMP) if File.exist?(TEMP)
end

puts "============="
puts "INDEX"
puts "============="
index
puts "============="
puts "FIND (5)"
puts "============="
find(5)
puts "============="
puts "WHERE MANSUR"
puts "============="
where("Mansur")

puts "============="
puts "UPDATE(2, Abisov Nikita)"
puts "============="

update(2, "Abisov Nikita")


puts "============="
puts "delete(5)"
puts "============="
delete(5)

puts "============="
puts "INDEX"
puts "============="
index