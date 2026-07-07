# Proyek Shell Scripting — Monitoring Memory & Disk Usage

Proyek submission untuk kelas **Belajar Dasar Linux untuk Pemula** di Dicoding. Skenario proyek ini mensimulasikan tugas seorang Linux System Administrator yang perlu memantau penggunaan memory dan ruang disk server secara otomatis menggunakan shell script.

## 📋 Deskripsi

Script ini (`script.sh`) mengotomatiskan pengecekan kondisi server dengan menampilkan:

1. Ukuran memory sistem dalam satuan **megabytes (MB)**
2. Penggunaan ruang disk pada filesystem dalam satuan **gigabytes (GB)**
3. Ringkasan penggunaan disk khusus kolom **Filesystem** dan **Use%**, tanpa menyertakan `tmpfs`

Seluruh proses berjalan sebanyak **3 kali** menggunakan perulangan `while`, dengan jeda 1 detik di antara setiap output agar mudah dibaca.

## 📂 Struktur File

```
.
├── script.sh       # Shell script utama untuk monitoring memory & disk
├── history.txt     # Riwayat command yang dijalankan (hasil dari `history`)
└── README.md       # Dokumentasi proyek ini
```

## ⚙️ Cara Menjalankan

1. Clone atau buka repository ini di lingkungan Linux (bisa via WSL, GitHub Codespaces, atau VM Linux).
2. Beri izin eksekusi pada script:
   ```bash
   chmod +x script.sh
   ```
3. Jalankan script:
   ```bash
   ./script.sh
   ```
4. (Opsional) Simpan riwayat command yang telah dijalankan ke `history.txt`:
   ```bash
   history > history.txt
   ```

## 🖥️ Contoh Output

```
Hello, my name is Ivan Rahadian
===== Percobaan ke-1 =====
Berikut adalah penggunaan memory saat ini dalam MB:
               total        used        free      shared  buff/cache   available
Mem:            7944        1788         153          61        6379        6156
Swap:              0           0           0

Berikut adalah penggunaan disk saat ini dalam GB:
Filesystem     1G-blocks  Used Available Use% Mounted on
overlay              32G   10G       21G  33% /
/dev/root            29G   24G        6G  81% /vscode
/dev/sda1            44G    3G       40G   5% /tmp

Berikut adalah penggunaan disk untuk kolom Filesystem dan Use% (tanpa tmpfs):
Filesystem Use%
overlay 33%
/dev/root 81%
/dev/sda1 5%

===== Percobaan ke-2 =====
...
===== Percobaan ke-3 =====
...
```

> Catatan: hasil aktual dapat berbeda tergantung kondisi memory dan disk pada sistem tempat script dijalankan.

## ✅ Fitur & Ketentuan yang Dipenuhi

- [x] Menampilkan ukuran memory dalam MB (`free -m`)
- [x] Menampilkan penggunaan disk dalam GB (`df -BG`)
- [x] Menampilkan kolom Filesystem & Use% tanpa tmpfs (`df -h | grep -v tmpfs | awk`)
- [x] Setiap output diawali keterangan singkat
- [x] Setiap output diakhiri baris baru
- [x] Setiap output diberi jeda 1 detik (`sleep 1`)
- [x] Komentar pada setiap baris perintah
- [x] Variabel `name` dengan sapaan di awal script
- [x] Perulangan `while` agar seluruh perintah berjalan 3 kali

## 🛠️ Teknologi

- Bash Shell Script
- Linux command line tools: `free`, `df`, `grep`, `awk`

## 👤 Author

**Ivan Rahadian**
Dicoding Username: `rahadianivan09`
