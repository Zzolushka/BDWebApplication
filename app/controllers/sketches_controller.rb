class SketchesController < ApplicationController

  def index
    @sketches = Sketch.all
  end

  def show
    @sketch = Sketch.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:sketch].inspect
    @sketch = Sketch.new(sketch_params)

    @sketch.save
    redirect_to @sketch
  end

  private
    def sketch_params
      params.require(:sketch).permit(:title,:text)
    end
  end
