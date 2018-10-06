	
FROM	node:alpine
WORKDIR	/data
ENTRYPOINT	["resume"]
RUN	npm install -g resume-cli jsonresume-theme-elegant
