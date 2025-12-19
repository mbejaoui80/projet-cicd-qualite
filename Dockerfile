ARG PYTHON_VER=3.12
FROM python:${PYTHON_VER}-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# On laisse le CMD sur pytest, flake8 sera appelé par le pipeline
CMD ["pytest", "test_calcul.py"]