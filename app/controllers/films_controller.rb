class FilmsController < ApplicationController
  def index
    @films = Film.all  
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)   
      respond_to do |format|
      if @film.save   
      format.html {redirect_to films_path, notice: 'Film was Successfully uploaded.'}   
      format.json {render :show, status: :created, location: @film}
      else   
        format.html {render :new }
        format.json {render json: @film.errors, status: :unprocessable_entity } 
      end   
    end
 end

  def destroy
    @film = Film.find(params[:id])   
    @film.destroy   
    redirect_to films_path, notice:  "Successfully deleted."   
  end
  private   
  def film_params   
  params.require(:film).permit(:title, :category, :year, :price, :attachment)   
  end
end
