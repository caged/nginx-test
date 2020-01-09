FROM node:12.13.0

WORKDIR /usr/src/app

# Installing dependencies
COPY package.json yarn.lock ./

RUN yarn install --pure-lockfile

COPY . .

EXPOSE 3000

# Running the app
ENTRYPOINT [ "yarn", "dev"]
CMD []