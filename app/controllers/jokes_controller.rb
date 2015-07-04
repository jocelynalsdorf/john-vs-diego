class JokesController < ApplicationController

before_action :find_joke, only: [:show, :edit, :update, :destroy]


	def index
		@jokes = Joke.all.order("created_at DESC")
	end

	def show
	end

	def new
		@joke = Joke.new
	end

	def create
		@joke = Joke.new(joke_params)
		if @joke.save
	  redirect_to jokes_path
	  else
	    render :new
	  end
	end

	def edit
  end

  def update
		if @joke.update(joke_params)
			redirect_to @joke
		else
			render :edit
  	end
	end

  def destroy
    @joke.destroy
    redirect_to root_path
  end

  private
  def joke_params
    params.require(:joke).permit(:question, :punchline,  :category_id)
  end
	def find_joke
		@joke = Joke.find(params[:id])
	end

end
