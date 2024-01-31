# Python resmi image'ını temel alın
FROM python:3.8

# Çalışacağımız dizini oluşturalım
WORKDIR /app

# Gerekli Python paketlerini yükleyelim
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# app.py içerisinde ki kodları kopyalayalım
COPY . .

# Uygulamayı çalıştırın
CMD ["python", "./app.py"]
