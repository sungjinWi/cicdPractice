# 베이스 이미지로 nodejs 18.14.2 사용
FROM node:18.14.2

# 명령어를 실행할 work directory 생성
RUN mkdir -p /app
WORKDIR /app

# 프로젝트 전체를 work directory에 추가
ADD . /app/

# 프로젝트에 사용되는 의존성 설치
RUN npm install

# NEST.JS 빌드
RUN npm run build

# PORT(3000) 개방
EXPOSE 3000

# 서버 실행
ENTRYPOINT npm run start:prod