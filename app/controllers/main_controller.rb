class MainController < ApplicationController
  def index
  end

  def about
    # render("tasks/index")
    # render("index")
  end

  def hello
    redirect_to(action: "index")
  end
end
