class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.all
  end

  def show
    @presentation = Presentation.find(params[:id])
  end

  def new
    @presentation = Presentation.new
    @presentation.slides.build
  end

  def create
    @presentation = Presentation.new(params[:presentation])
    if @presentation.save
      redirect_to @presentation, :notice => "Successfully created presentation."
    else
      render :action => 'new'
    end
  end

  def edit
    @presentation = Presentation.find(params[:id])
  end

  def update
    @presentation = Presentation.find(params[:id])
    if @presentation.update_attributes(params[:presentation])
      redirect_to @presentation, :notice  => "Successfully updated presentation."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @presentation = Presentation.find(params[:id])
    @presentation.destroy
    redirect_to presentations_url, :notice => "Successfully destroyed presentation."
  end
end
