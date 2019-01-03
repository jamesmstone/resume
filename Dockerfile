	
FROM	node:alpine
WORKDIR	/data
ENTRYPOINT	["resume"]
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
RUN	npm install -g resume-cli jsonresume-theme-elegant
