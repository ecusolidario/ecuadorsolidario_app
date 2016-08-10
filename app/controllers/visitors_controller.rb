class VisitorsController < ApplicationController
  def index
    @casos = Caso.all
    @posts = Blogit::Post.all
  end
end
