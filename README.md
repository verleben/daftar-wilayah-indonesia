# 🇮🇩 Daftar Wilayah Indonesia (Lite-Version)

Script ini digunakan untuk mengunduh data wilayah administratif Indonesia dan membaginya menjadi file CSV terpisah berdasarkan masing-masing tingkat wilayah.

- Provinsi ([provinces.csv](https://raw.githubusercontent.com/edwardsamuel/Wilayah-Administratif-Indonesia/refs/heads/master/csv/provinces.csv))
- Kabupaten atau Kota ([regencies.csv](https://raw.githubusercontent.com/edwardsamuel/Wilayah-Administratif-Indonesia/refs/heads/master/csv/regencies.csv))
- Kecamatan ([districts.csv](https://raw.githubusercontent.com/edwardsamuel/Wilayah-Administratif-Indonesia/refs/heads/master/csv/districts.csv))
- Kelurahan atau Desa ([villages.csv](https://raw.githubusercontent.com/edwardsamuel/Wilayah-Administratif-Indonesia/refs/heads/master/csv/villages.csv))

## 📁 Struktur Output

Setelah script dijalankan, hasilnya akan berada di folder `dist/` dengan struktur sebagai berikut:
```
dist/
├── provinsi.csv
├── kota/
│   ├── 11.csv       # Provinsi Aceh
│   └── 12.csv       # Sumatera Utara
├── kecamatan/
│   ├── 1101.csv     # Kabupaten Simeulue
│   └── 1102.csv     # Kabupaten Aceh Singkil
├── kelurahan/
│   ├── 1101010.csv  # Kecamatan Teupah Selatan
│   └── 1101020.csv  # Kecamatan Simeulue Timur
```

## 🗑 Opsional
rm regencies.csv districts.csv villages.csv

## ✨ Bonus: List Negara
- Negara ([countries.csv](https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/refs/heads/master/csv/countries.csv));

## 🔗 Sumber data
Data diambil dari repositori GitHub:
- **🔗 https://github.com/edwardsamuel/Wilayah-Administratif-Indonesia**
- **🔗 https://github.com/dr5hn/countries-states-cities-database**
