FROM python:3.10-slim
LABEL org.opencontainers.image.source="https://github.com/seaneon/ci-cd-actions-lab"


WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

# Add current directory to PYTHONPATH so app.py can be imported in tests
ENV PYTHONPATH=/app

CMD ["pytest"]

