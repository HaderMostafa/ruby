#!/user/bin/env ruby

# Q1:
def multiple_string(str)
    puts "Enter number"
    n = gets.chomp
    num = n.to_i
    # puts num.class
    a = 0
    while a < num do 
        # puts "hadeer is superhero ;)"
        a+=1
        puts str*a
    end 
end

puts multiple_string("a")

## # # # # # # # # # # # # # # # # # # # # # # # # 

#Q2:
def start_if(str)
    return str[0, 2] == "if";
 end
 print start_if("ifMonica"),"\n"
 print start_if("Hadeer"),"\n" 

 ## # # # # # # # # # # # # # # # # # # # # # # # # 

# Q3:
def reverse_char()
    puts "Enter String :"
    str =gets.chomp
    # startI=0
    lastI=str.length-1 
    startC = str[0]
    lastC = str[lastI]
    str.slice!(0)
    str.slice!(str.length-1)
    puts lastC+str+startC
end

reverse_char

## # # # # # # # # # # # # # # # # # # # # # # # # 
# Q4:

def add_char()
    puts "Enter String :"
    str =gets.chomp
    if str.length > 0
        lastC = str[str.length-1]
        puts lastC+str+lastC
    else 
        puts "da5l string aktar mn character ba3d eznak!!"    
    end
end   

add_char
## # # # # # # # # # # # # # # # # # # # # # # # # 

# Q5:
year = [2012, 1500, 1600, 2020]
year.each do |y|
  if y % 400 == 0
  	 puts y.to_s + ' is leap year'
    elsif y % 4==0 && y % 100 != 0 
      puts y.to_s + ' is leap year'
  else  puts y.to_s + ' is not leap year'
  end
end

## # # # # # # # # # # # # # # # # # # # # # # # # 
# Q6:

def rotate_array(nums)
    rotated = nums[1], nums[2], nums[0];
	return rotated;
end
p rotate_array([1, 2, 5])
p rotate_array([1, 2, 3])
p rotate_array([1, 2, 4]) 

## # # # # # # # # # # # # # # # # # # # # # # # # 
# Q7:
def sum_array(nums)
    sum = 0
    i = 0
    while i<nums.length
        if nums[i]==17
            i=i+2
        else
            sum+=nums[i]
            i=i+1
        end 
    end
    puts sum
end    

sum_array([3, 5, 17, 6])   
sum_array([3, 5, 1, 17])
sum_array([3, 17, 1, 7])    
        
 