FROM node:14-slim
ARG MATRIX_TOKEN
WORKDIR /code
COPY . .
RUN ["npm", "i"]
RUN ["npm", "run", "build"]
CMD ["npm", "run", "js:start"]