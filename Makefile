


init:
	@docker run -v $$(pwd):/site bretfisher/jekyll new . --blank --force

serve:
	@docker run -p 4000:4000 -v $$(pwd):/site bretfisher/jekyll-serve