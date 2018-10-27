class SketchesController < ApplicationController

  def index
    @sketches = Sketch.all
  end

  def show
    @sketch = Sketch.find(params[:id])
  end

  # def new
  #   @sketch = Sketch.new
  # end
  #
  # def edit
  #   @sketch = Sketch.find(params[:id])
  # end
  #
  # def create
  #   # render plain: params[:sketch].inspect
  #   @sketch = Sketch.new(sketch_params)
  #
  #   if(@sketch.save)
  #     redirect_to @sketch
  #   else
  #     render 'new'
  #   end
  # end

  # def update
  #   @sketch = Sketch.find(params[:id])
  #   if(@sketch.update(sketch_params))
  #     redirect_to @sketch
  #   else
  #     render 'edit'
  #   end
  # end


  def destroy
    @sketch = Sketch.find(params[:id])
    @sketch.destroy

    redirect_to sketches_path
  end

  private def sketch_params
      params.require(:sketch).permit(:title,:text)
    end
end
