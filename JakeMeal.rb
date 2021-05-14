load 'test.rb'

def time_to_eat szoveg
  hours= szoveg.match(/\A\d{1,2}/).to_s.to_i
  minutes= szoveg.match(/\d{2}\s/).to_s.chop.to_i
  daytime= szoveg.match(/\s[a-z]/).to_s[1]

  mikor=[]
  if (hours > 7 && daytime=="p") or (hours <7 && daytime =="a") or (hours ==12 && daytime=="a")
    if hours > 7 && minutes
      #minutes !=0 ? print(12-hours+6, " ", 60 - minutes) : print(12 - hours+7 ," ", 0)
      mikor  += [12-hours+6 , 60-minutes] if minutes!=0
      mikor  += [12 - hours+7 , 0] if minutes==0
    else
      #minutes !=0 ? print(7 - hours -1, " ", 60 - minutes) : print(7 - hours ," ", 0)
      mikor  += [7 - hours -1 , 60-minutes] if minutes!=0
      mikor  += [7 - hours  , 0] if minutes==0
    end

  elsif hours >7 && daytime =="a" && hours <=12
    #minutes !=0 ? print(12-hours-1, " ", 60 - minutes) : print(12 - hours ," ", 0)
    mikor  += [12-hours-1 , 60-minutes] if minutes!=0
    mikor  += [12 - hours , 0] if minutes==0
  else
    #minutes !=0 ? print(7 - hours -1, " ", 60 - minutes) : print(7 - hours ," ", 0)
    mikor  += [7 - hours -1 , 60-minutes] if minutes!=0
    mikor  += [7 - hours  , 0] if minutes==0

  end
  return mikor
end


Test.assert_equals(time_to_eat("2:00 p.m."), [5, 0])
Test.assert_equals(time_to_eat("5:50 a.m."), [1, 10])
Test.assert_equals(time_to_eat("6:37 p.m."), [0, 23])
Test.assert_equals(time_to_eat("12:00 a.m."), [7, 0])
Test.assert_equals(time_to_eat("11:58 p.m."), [7, 2])
Test.assert_equals(time_to_eat("3:33 p.m."), [3, 27])

