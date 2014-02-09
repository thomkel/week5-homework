class ComicsController < ApplicationController

	def index
		@comics = Comics.all
	end

	def new
		title = params["title"]
		desc = params["description"]
		image = params["image"]

		if title != nil and desc != nil and image != nil then
			new_comic = Comics.new
			new_comic.title = title
			new_comic.description = desc
			new_comic.image = image

			new_comic.save

			@comic = new_comic

			render "new"
		else
			@comic = Comics.first
		end

	end

	def show
		@comic_id = params["id"]
		@comic = Comics.find_by id: @comic_id
	end

	def destroy
		comic_id = params["id"]
		comic_id = comic_id.to_i

		Comics.delete(comic_id)

		@comics = Comics.all

		render "index"
	end
end