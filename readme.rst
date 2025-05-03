# 🧱 Sistem Penjualan Beton - CodeIgniter 3

Sistem ini merupakan aplikasi berbasis web untuk mengelola penjualan beton. Dibangun menggunakan **CodeIgniter 3**, sistem ini mendukung pengelolaan pelanggan, produk beton, transaksi penjualan, dan laporan.

---

## 🚀 Fitur Utama

- Manajemen data pelanggan
- Manajemen produk beton
- Pencatatan transaksi penjualan
- Pencetakan nota / faktur
- Laporan penjualan berdasarkan tanggal
- Autentikasi pengguna (login/logout)
- Role pengguna (admin dan kasir)

---

## 🛠️ Teknologi

- PHP 7.x
- CodeIgniter 3.x
- MySQL / MariaDB
- jQuery & AJAX
- Bootstrap 4 (atau sesuaikan)
- AdminLTE / Template dashboard lainnya

---

## 📦 Instalasi

### 1. Clone Repository

```bash
git clone https://github.com/username/sistem-penjualan-beton.git
cd sistem-penjualan-beton


Duplikat file application/config/config.php, database.php, dan autoload.php jika belum ada.
Ubah pengaturan dasar berikut:

// application/config/config.php
$config['base_url'] = 'http://localhost/sistem-penjualan-beton/';

// application/config/database.php
$db['default'] = array(
  'hostname' => 'localhost',
  'username' => 'root',
  'password' => '',
  'database' => 'penjualan_beton',
  'dbdriver' => 'mysqli',
  ...
);
