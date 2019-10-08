class Image 
    attr_accessor :blur
  
    def initialize(blur)
        @blur = blur
    end
    
    def get_one
    	one = []
    	@blur.each_with_index do |row, row_number|
    		row.each_with_index do |item, col_number|
    		if item == 1
    		  one << [row_number, col_number]
    		end
    		end
    	end
 return one
 end
    
    def transform
    	one = get_one
    	one.each do |pairs|
    		row = pairs[0]
    		column = pairs[1]
    		if row > 0
    			@blur[row -1][column] = 1
    		end
    		if row < 3
    			@blur[row +1][column] = 1
    		end
    		if column > 0
    			@blur[row][column -1] = 1
    		end
    		if column <3
    			@blur[row][column +1] = 1
    		end
    	end
    end

    def output_image
        @blur.each do |numbers|
            puts numbers.join  #.join makes numbers be displayed in specific rows
        end
    end
 end   

image = Image.new([
  [0, 0, 0, 0],  #row 1
  [0, 1, 0, 0],  #row 2
  [0, 0, 0, 1],  #row 3
  [0, 0, 0, 0]   #row 4
])

image.output_image   #outputs the array
puts							   #space
image.transform      #transforms date

image.output_image   #outputs transformed data

