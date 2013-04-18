module ApplicationHelper

	# Provide / Return a general title on a per page basis
	def title
		base_title = "Tutorial App"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def logo
		image_tag("logo.png", :alt => "Tutorial App", :class => "round")
	end
	
end
