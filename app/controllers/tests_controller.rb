class TestsController < ApplicationController
  def new
    @test = Test.new
  end

  def show
    @test = Test.find(params[:id])
    render json: @test
  end

  def create
  end
end
