class CitationsController < ApplicationController
  
  def index
    @citations = Citation.where(user_id: current_user.id)
  end

  def new
    @citation = Citation.new
    @text_string = "Add Citation"
  end

  def edit
    @citation = Citation.find_by_id(params[:id])
    @text_string = "Update Citation"
  end

  def create
    @citation = Citation.new(citation_params)
    @citation.user_id = current_user.id
    puts @citation
    if @citation.save
      redirect_to citations_url
    else
      render "new"
    end
  end

  def update
    @citation = Citation.find_by_id(params[:id])
    if @citation.update(citation_params)
      redirect_to citations_url
    else
      render :edit
    end
  end

  def destroy
    @citation = Citation.find_by_id(params[:id])
    @citation.destroy
    redirect_to citations_url
  end

  private
  def citation_params
      params.require(:citation).permit(:title, :link, :note)
  end
  
end
