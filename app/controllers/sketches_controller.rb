class SketchesController < ApplicationController

  def index
    @sketches = Sketch.all
  end

  def new
    @sketch = Sketch.new
  end

  def edit
  end

  def show
    @sketch = Sketch.find(params[:id])
  end

  def create
    # render plain: params[:sketch].inspect
    @sketch = Sketch.new(sketch_params)

    if(@sketch.save)
      redirect_to @sketch
    else
      render 'new'
    end
  end

  private
    def sketch_params
      params.require(:sketch).permit(:title,:text)
    end
  end
