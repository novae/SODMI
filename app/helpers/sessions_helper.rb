module SessionsHelper
  def sign_in(maestro)
    cookies.permanent[:remember_token] = maestro.remember_token
    current_maestro = maestro
  end
  
  def signed_in?
    !current_maestro.nil?
  end
  def current_maestro=(maestro)
    @current_maestro = maestro
  end

  def current_maestro
    @current_maestro ||= Maestro.find_by_remember_token(cookies[:remember_token])
  end
  
   def sign_out
    current_maestro = nil
    cookies.delete(:remember_token) 
  end
end