class DocumentaryfilmsController < ApplicationController
  def index
    @documentaryfilms = Documentaryfilm.all
  end

  def new
    @documentaryfilm = Documentaryfilm.new
  end

  def create
    @documentaryfilm = Documentaryfilm.new(documentaryfilms_params)
      if @documentaryfilm.save
        redirect_to documentaryfilms_index_path
      else
        render :new
      end

  end
  private

  def documentaryfilms_params
    params.require(:documentaryfilm).permit(:name, :director, :synopsis)
  end
end
