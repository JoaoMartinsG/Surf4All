class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end
<<<<<<< HEAD

  def dashboard
    @boards = Board.all
  end
=======
  def dashboard
    
  end
  
>>>>>>> a9487b28b4b8669b5888622ab8c79307e4ce00d5
end
