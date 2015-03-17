NAMESPACE ?= online-labs


add_submodules:
	curl https://api.github.com/users/$(NAMESPACE)/repos\?per_page\=100 \
	  | jq -r '.[]|["git submodule add --force -- ", .clone_url]|join("")' \
	  | bash -x
