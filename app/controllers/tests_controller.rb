class TestsController < ApplicationController

  skip_before_action :verify_authenticity_token
  # before_action :create, :make_output_string

  def show
    @test = Test.find(params[:id])
    render json: @test
  end

  def index
    @tests = Test.all
    render json: @tests
  end

#  def create
#     new_output_string = params[:input_string].split("")
#     final_output_string_array = []
#     counter = 1
#     new_output_string.each do |letter|
#      if counter % 3 == 0
#        final_output_string_array.append(letter)
#      end      
#      counter = counter + 1
#    end
#    final_output_string = final_output_string_array.join("")
#    @test = Test.create(
#      input_string: params[:input_string], 
#      output_string: final_output_string
#    )
#    render json: @test
#  end

  def create
    @test = Test.create(string_to_cut: params[:string_to_cut])
    render json: @test
  end

  def test_params
    params.require(:test).permit(:string_to_cut, :return_string)
  end

end
