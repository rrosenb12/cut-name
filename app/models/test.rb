class Test < ApplicationRecord

#    before_create :make_output_string

#    def self.make_output_string()
 #       new_output_string = params[:input_string].split("")
  #      final_output_string_array = []
   #     counter = 1
    #    new_output_string.each do |letter|
     #     if counter % 3 == 0
      #      final_output_string_array.append(letter)
       #   end      
        #  counter = counter + 1
        #end
        #@final_output_string = final_output_string_array.join("")
    #end

    def input_string=(input_string)
        super(input_string)
        self.output_string = generate_output(input_string)
    end

    private

    def generate_output(input_string)
      new_output_string = input_string.split("")
      final_output_string_array = []
      counter = 1
      new_output_string.each do |letter|
        if counter % 3 == 0
          final_output_string_array.append(letter)
        end      
        counter = counter + 1
      end
      final_output_string_array.join("")
    end
end
