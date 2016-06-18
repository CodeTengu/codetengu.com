install:
	pip install awscli

deploy:
	aws s3 sync . s3://codetengu.com \
	--acl "public-read" \
	--exclude "*.DS_Store" \
	--exclude "*.gitignore" \
	--exclude ".git/*"
