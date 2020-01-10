FROM node:12.13.0

WORKDIR /usr/src/app

# Installing dependencies
COPY package.json yarn.lock ./

RUN yarn install --pure-lockfile

COPY . .

# Running the app
ENTRYPOINT [ "yarn", "dev"]
CMD []