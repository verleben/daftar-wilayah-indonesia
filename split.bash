#!/bin/bash

wget -O dist/provinsi.csv 'https://raw.githubusercontent.com/edwardsamuel/Wilayah-Administratif-Indonesia/refs/heads/master/csv/provinces.csv'
wget -O regencies.csv 'https://raw.githubusercontent.com/edwardsamuel/Wilayah-Administratif-Indonesia/refs/heads/master/csv/regencies.csv'
wget -O districts.csv 'https://raw.githubusercontent.com/edwardsamuel/Wilayah-Administratif-Indonesia/refs/heads/master/csv/districts.csv'
wget -O villages.csv 'https://raw.githubusercontent.com/edwardsamuel/Wilayah-Administratif-Indonesia/refs/heads/master/csv/villages.csv'

# Create output folders
mkdir -p dist/kota dist/kecamatan dist/kelurahan

while IFS=, read -r reg_code prov_code name; do
    echo "$reg_code,$prov_code,$name" >> "dist/kota/${prov_code}.csv"
done < <(tail -n +1 regencies.csv)  # adjust if headers present

while IFS=, read -r dist_code reg_code name; do
    echo "$dist_code,$reg_code,$name" >> "dist/kecamatan/${reg_code}.csv"
done < <(tail -n +1 districts.csv)

while IFS=, read -r village_code dist_code name; do
    echo "$village_code,$dist_code,$name" >> "dist/kelurahan/${dist_code}.csv"
done < <(tail -n +1 villages.csv)
