class PeopleController < ApplicationController
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(params.require(:person).permit(:email, :password, :password_confirmation))
    if @person.save
      session[:profile]=@person
      render "signup"
    else
      render "new"
    end
  end

  def signup

  end

 private

end