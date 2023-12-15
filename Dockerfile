# Gunakan image Python yang diinginkan
FROM python:3.8-slim

# Set lingkungan untuk mode produksi
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Atur direktori kerja
WORKDIR /app

# Salin file requirements.txt ke direktori kerja
COPY requirements.txt /app/

# Install dependensi
RUN pip install --upgrade pip && pip install -r requirements.txt

# Salin seluruh proyek ke direktori kerja
COPY . /app/

# Tentukan perintah untuk menjalankan aplikasi
CMD ["python", "nama_file_utama.py"]

