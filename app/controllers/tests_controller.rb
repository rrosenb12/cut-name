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
    @test = Test.create(string_to_cut: params[:string_to_cut])
    render json: @test

    # redirect_to action: 'tests#show', id: @test.id

  end

  def test_params
    params.require(:test).permit(:string_to_cut)
  end

  def display
  end

end
