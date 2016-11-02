class PoemsController < ApplicationController
  def index
    @poems = Poem.all
  end
 
  def show
    @poem = Poem.find(params[:id])
  end
  
  def new
  	@poem = Poem.new
  end

  def edit
  	@poem = Poem.find(params[:id])
  end
 
  def create
  	@poem = Poem.new(poem_params)
 
  	if @poem.save
    		redirect_to @poem
  	else
    		render 'new'
  	end
  end

  def update
  	@poem = Poem.find(params[:id])
 
  	if @poem.update(poem_params)
    		redirect_to @poem
  	else
    		render 'edit'
  	end
  end	

  def destroy
    	@poem = Poem.find(params[:id])
    	@poem.destroy
 
    	redirect_to poems_path
  end

  private
  	def poem_params
    		params.require(:poem).permit(:picture, :information)
  	end
end
