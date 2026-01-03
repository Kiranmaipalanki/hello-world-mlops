FROM python:3.12-slim

WORKDIR /app
COPY requirements.txt .

RUN python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt #Intsalling the dependencies before copying the source code as the image size will be significantly reduces

COPY . .
EXPOSE 5001

CMD ["python", "app.py"]
