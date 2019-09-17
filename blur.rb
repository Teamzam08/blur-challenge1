class Image 
    attr_accessor :blur
  
    def initialize(blur)
        @blur = blur
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

image.output_image #outputs the array

