FROM ruby:2.3.3-alpine

RUN apk -U --no-cache update
RUN apk -U --no-cache add mariadb-dev make g++ linux-headers 

WORKDIR /migrator
COPY . .

RUN bundle install

CMD ["rake", "db:setup"]
