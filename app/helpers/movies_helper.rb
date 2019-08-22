module MoviesHelper
	def decorated_date(date)
	    if !date.blank?
	      date.strftime('%B %d, %Y %I:%M %P' )
	    end
	  end
end
