class CLI

    def run
        system('clear')
        menu_alarm
        end_game
    end


    def menu_alarm
        puts "Your alarm clock buzzes and its time to get up to start your day.  What do you do first?"
        puts "1- Take a shower"
        puts "2- Make a cup of coffee"
        puts "3- Watch the morning news"
        scenario_a = gets.chomp.to_i
            if scenario_a == 1
                menu_shower
            elsif scenario_a == 2
                menu_coffee
            elsif scenario_a == 3
                menu_news
            else
                puts "invalid selection"
                menu_alarm
            end
    end

    def menu_shower
        song = "While singing, a crowd gathers outside of your bathroom window in awe of the heavenly
sounds eminating from your home.  You're immediately offered a record deal and become an overnight,
international pop sensation."

        cat = "You reach down to pet your cat, but before you can, your cat grumbles, 'Not until I've
had my morning catnip' and then it proceeds to bite you."

        teeth = "You squeeze some toothpaste onto your toothbrush while you take a quick glance in the mirror.
You freeze at the sight of your reflection.  Literally, every single tooth that was in your mouth is
missing.  You can feel your face flush with heat and anger as you realize what has happened.  You've
been robbed...by the tooth fairy!"

        puts "You turn on the water and wait for it to get hot.  What do you do while you wait?"
        puts "1- Sing your favorite song"
        puts "2- Pet your cat"
        puts "3- Brush your teeth"
        scenario_shower = gets.chomp.to_i
            if scenario_shower == 1
                puts song
            elsif scenario_shower == 2
                puts cat
            elsif scenario_shower ==3
                puts teeth  
            else
                puts "Invalid Selection"
                menu_shower
            end
    end

    def menu_coffee

        sugar = "You put a teaspoon of sugar in your coffee and stir it around with your spoon.
You then decide to chug the mug of morning elixir because you're extra tired from a poor night's sleep.
As you lower the empty mug back down to the counter top, a rancid after taste stings your tongue.
You glance at the adjacent bag of sugar and then realize that it's actually not a bag of sugar at all.
Rather, a bag of poison.  You added a teaspoon of poison to your coffee, not a teaspoon of sugar.
Your breathing becomes quick and labored.  The room starts to close in around you.  Now, you're swimming in a sea of darkness.  
Good night"

        creamer = "You open your refrigerator door in search of some hazelnut creamer.
When you open the door, you immediately freeze in terror at the sight of a ghoulish creature.
The creature senses your fear and knows of that which your are seeking.  In a voice too horrible to describe,
it declares, 'there is no creamer...only Zuul."

        black = "You pour a mug of the stout stuff and leave it for a moment to let it cool.
When you return, you do a double take.  You realize that what you've actually poured isn't coffee, but
rather, a mug of oil.  It's your lucky day.  You've struck oil in your kitchen!  Your coffee pot is your own
personal oil well.  You call your boss to let him know that you won't be coming into work today...
or ever again...because now, you're a rich oil tycoon!"

        puts "You're not sure how you should doctor you coffee this morning.  Do you:"
        puts "1- Add a teaspoon of sugar?"
        puts "2- Add a fancy creamer?"
        puts "3- Leave it old school black?"
        scenario_coffee = gets.chomp.to_i
            if scenario_coffee == 1
                puts sugar
            elsif scenario_coffee == 2
                puts creamer
            elsif scenario_coffee == 3
                puts black
            else 
                puts "Invalid Selection"
                menu_coffee
            end
    end

    def menu_news
        two = "You turn on the tv to channel 2 just in time for the day's weather forecast.  Bad news...
the weatherman is calling for rain all day.  Oh wait...but good news!  It will be raining chocolate!
And lots of it!  I hope it floods."

        four = "You reach for the remote to turn on your tv, but nothing happens.  The remote battery must
be dead.  So you walk over to the tv to press the on button on the tv.  Yet again, nothing happens.
The tv must be dead, you sigh.  You stand in the middle of your living room and stare into the empty console.
You're confused by what you see.  Or rather, what you don't see.  You have no reflection.  The remote
battery isn't dead.  The tv isn't dead.  It's you.  You're dead."

        five = "You turn the tv to channel 5 but all you hear is static.  All you see is snow.  As you stand
there trying to remember if you paid your cable bill, you feel hot breath in your ear.  You hear a tiny
whisper of a warning, 'Don't look into the light.'"

        puts "Which news channel do you want to watch?"
        puts "2"
        puts "4"
        puts "5"
        scenario_news = gets.chomp.to_i
        if scenario_news == 2
            puts two
        elsif scenario_news == 4
            puts four
        elsif scenario_news == 5
            puts five
        else
            puts "Invalid Selection"
            menu_news
        end
    end

    def end_game
        puts "GAME OVER"
        puts "Play again? (y/n)"
        answer = gets.chomp.downcase
        if answer == "y"
            run
        end
    end
end