
init:
	@docker run \
		-v $$(pwd):/site \
		bretfisher/jekyll new . --blank --force

serve:
	@docker run \
		-p 4000:4000 \
		-v $$(pwd):/site \
		-v $$(pwd)/.bundle/root:/root/.bundle \
		-v $$(pwd)/.bundle/local:/usr/local/bundle \
		bretfisher/jekyll-serve
