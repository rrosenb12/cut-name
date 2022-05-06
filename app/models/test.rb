class Test < ApplicationRecord

    def string_to_cut=(string_to_cut)
        super(string_to_cut)
        self.return_string = generate_output(string_to_cut)
    end

    private

    def generate_output(string_to_cut)
      new_output_string = string_to_cut.split("")
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
