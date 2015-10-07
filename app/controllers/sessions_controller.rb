class SessionsController < ApplicationController
  def new
  end

  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher && teacher.authenticate(params[:password])
      session[:teacher_login] = true
      redirect_to teachers_path, notice: "Login successful."
    else
      redirect_to login_path, notice: "Does not compute! Invalid email and/or password"
    end
  end

  def destroy
    session[:teacher_login] = false
    redirect_to root_path, notice: "You are now logged out."
  end

  private

  def set_params
    params.require(:sessions).permit(:name, :email, :password)
  end
end

  # u = User.find_by_email(params[:email])
  #   if u.authenticate(params[:password])
  #     session[:something] = #something
  #     redirect_to good_path, notice: "You did it!"
  #   else
  #     redirect_to bad_path, notice: "Go jump off a short ledge."
  #   end
