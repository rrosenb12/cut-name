class TestsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def show
    @test = Test.find(params[:id])
    render json: @test
  end

  def index
    @tests = Test.all
    render json: @tests
  end

  def create
    @test = Test.create(test_params)
    render json: @test
  end

  def test_params
    params.require(:test).permit(:input_string, :output_string)
  end
end
