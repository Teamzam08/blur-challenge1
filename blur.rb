class Image 
    attr_accessor :picture
  
    def initialize(picture)
        @picture = picture
    end
    
    def get_one
    	one = []
    	@picture.each_with_index do |row, row_number|
    		row.each_with_index do |item, col_number|
    			if item == 1
    		  	one << [row_number, col_number]
    			end
    		end
    	end
 			return one
		end
   
    def blur(distance = 1)
    	distance.times do
    	one = get_one	
    	one.each do |pairs|
    		row = pairs[0]
    		column = pairs[1]
    		if row > 0
    			@picture[row - 1][column] = 1 
    		end
    		if row < 5
    			@picture[row + 1][column] = 1 
    		end
    		if column > 0
    			@picture[row][column - 1] = 1 
    		end
    		if column < 3
    			@picture[row][column + 1] = 1 
    		end
    		
        end
    	end
  end

    def output_image
        @picture.each do |numbers|
            puts numbers.join  #.join makes numbers be displayed in specific rows
        end
    end 

end
image = Image.new([
  [0, 0, 0, 0],  #row 1
  [0, 0, 0, 0],  #row 2
  [0, 0, 0, 0],  #row 3
  [0, 1, 0, 0],  #row 4
  [0, 0, 0, 0],  #row 5
  [0, 0, 0, 0],  #row 6

])

puts "Old array:"
puts
image.output_image   
puts							   
puts "New array:"
puts



image.blur(2)      #transforms date

image.output_image   #outputs transformed data
