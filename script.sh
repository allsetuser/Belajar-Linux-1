#!/bin/bash

# Variabel name berisi nama lengkap, digunakan untuk sapaan di awal script
name="Ivan Rahadian"

# Mencetak salam pembuka menggunakan variabel name
echo "Hello, my name is ${name}"

# Variabel counter untuk mengontrol perulangan while agar berjalan 3 kali
counter=1

# Perulangan while agar seluruh perintah di bawah berjalan sebanyak 3 kali
while [ $counter -le 3 ]
do
    # Menampilkan iterasi ke berapa saat ini (opsional, memudahkan pembacaan output)
    echo "===== Percobaan ke-$counter ====="

    # Menampilkan keterangan sebelum menjalankan perintah penggunaan memory
    echo "Berikut adalah penggunaan memory saat ini dalam MB:"

    # Menampilkan ukuran memory sistem dalam satuan megabytes menggunakan free -m
    free -m

    # Memberi baris baru agar output terpisah rapi
    echo ""

    # Memberi jeda 1 detik sebelum menampilkan ketentuan berikutnya
    sleep 1

    # Menampilkan keterangan sebelum menjalankan perintah penggunaan disk
    echo "Berikut adalah penggunaan disk saat ini dalam GB:"

    # Menampilkan penggunaan ruang disk pada filesystem dalam satuan gigabytes menggunakan df -BG
    df -BG

    # Memberi baris baru agar output terpisah rapi
    echo ""

    # Memberi jeda 1 detik sebelum menampilkan ketentuan berikutnya
    sleep 1

    # Menampilkan keterangan sebelum menjalankan perintah filesystem dan Use% tanpa tmpfs
    echo "Berikut adalah penggunaan disk untuk kolom Filesystem dan Use% (tanpa tmpfs):"

    # Menampilkan hanya kolom Filesystem dan Use%, mengecualikan baris yang mengandung tmpfs
    df -h | grep -v "tmpfs" | awk '{print $1, $5}'

    # Memberi baris baru agar output terpisah rapi
    echo ""

    # Memberi jeda 1 detik sebelum masuk ke perulangan berikutnya
    sleep 1

    # Menambah nilai counter agar perulangan while dapat berhenti setelah 3 kali
    counter=$((counter+1))
done
