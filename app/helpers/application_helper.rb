module ApplicationHelper
	def flash_class(level)
    case level
      when "notice" then "flash-success"
      when "success" then "flash-success"
      when "error" then "flash-danger"
      when "alert" then "flash-danger"
    end
	end
end
