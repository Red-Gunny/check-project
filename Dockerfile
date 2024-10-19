# 1. 베이스 이미지 선택 (Python 3.9 버전)
FROM python:3.9-slim

# 2. 컨테이너 내에서 작업할 디렉토리 생성
WORKDIR /app

# 3. 필요 패키지를 정의한 requirements.txt 파일을 컨테이너로 복사
COPY requirements.txt .

# 4. 필요한 패키지 설치 (Flask 포함)
RUN pip install --no-cache-dir -r requirements.txt

# 5. 애플리케이션 코드를 컨테이너의 /app 디렉토리로 복사
COPY . .

# 6. 환경 변수를 설정 (Flask 애플리케이션 파일과 실행 환경 설정)
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# 7. 컨테이너가 실행되었을 때 플라스크 서버를 시작하는 명령
CMD ["flask", "run", "--host=0.0.0.0", "--port=40000"]
