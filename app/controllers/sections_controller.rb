class SectionsController < ApplicationController
  def index
    @sections = Section.all
    if params[:sections]
      section = Section.find_by(name: params[:sections])
      @food_items = section.food_items
    end
  end

  def show
    @section = Section.find(params[:id])
    @food_items = @section.food_items
  end
end
