module PodajSlowkoHelper
  def checkuj
    if params[:slowko].downcase == $solution
      session[:points] += 1
      session[:01] = 1
      render html: "Excellent! You get a point! You already have #{session[:points]} points."

    else
      session[:01] = 0
      render html: "Try again!"
    end
  end
end
