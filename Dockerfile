FROM rckrdstrgrd/docker-node:latest

RUN yarn global add gulp

RUN git clone https://github.com/mozilla/pdf.js.git;\
	cd pdf.js;\
 	yarn;\
 	gulp generic;\
	printf "User-agent: *\nDisallow: /" > build/generic/robots.txt;