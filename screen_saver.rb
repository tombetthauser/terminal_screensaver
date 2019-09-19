chars = (0..9).to_a + ('A'..'z').to_a + ('!'..'?').to_a

quit = false
system("clear")

def coin_flip(num)
    coin_flip = rand(0..num)
end

def rand_clear(num, chars)
    if coin_flip(num) == 0
        system("clear")
        populate(rand(2..5), chars)
    end
end

def rand_paragraph_break
    if coin_flip(3000) == 0
        puts
        puts
    end
end

def rand_line_break(num)
    if coin_flip(num) == 0
        puts
    end
end

def populate(num, chars)
    num.times do
        rand(10..50).times do
            print chars.shuffle[0..rand(99)].join
            rand_line_break(1)
        end
        puts
        puts
    end
end

system("clear")
populate(rand(3..5), chars)

while quit == false
    # populate(rand(3..5), chars)
    # gets

    # print chars.shuffle[0..rand(1..100)].join

    print chars.shuffle[0]
    rand_clear(200, chars)
    rand_paragraph_break
    rand_line_break(150)
    sleep (rand()/50.0)
end
