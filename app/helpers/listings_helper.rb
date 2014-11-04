module ListingsHelper
	def helper_check_user(user, model)
		user && user == model.user
	end #helper_check_user(user, model)


end #ListingsHelper
