class MainController < ApplicationController
  def index
  end

  def about
    # render("tasks/index")
    # render("index")
    @author = "JacobM231"
    @id = params["id"]
    @page = params[:page]
  end

  def hello
    redirect_to(action: "index")
  end
end
