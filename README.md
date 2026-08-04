🧠 Web Alat Ukur Psikologi – Auto Result Scoring
Proyek ini adalah web sederhana berbasis Flask untuk mengukur aspek psikologi pengguna dengan mengisi kuisioner. Setelah user mengisi data diri dan menjawab semua pertanyaan, sistem otomatis menghitung total skor dan menampilkan kategori hasil berdasarkan metode Mean Hipotetik dan Standar Deviasi.

⚙️ Fitur Utama
- Form input data diri (nama, usia, jenis kelamin)
- Kuesioner berbasis skala (misal: skala 1–4)
- Skor dihitung otomatis saat submit
- Kategori ditentukan secara statistik (Rendah, Sedang, Tinggi)
- Data tersimpan ke MySQL: user, respons, dan hasil akhir

🗃️ Struktur Database (Tabel)
- users(user_id, name, age, gender)
- questions(question_id, question_text)
- responses(response_id, user_id, question_id, answer)
- user_scores(id_user_scores, user_id, total_score, category, created_at)

🛠️ Teknologi
- Backend: Python (Flask)
- Database: MySQL
- Template Engine: HTML

🚀 Cara Menjalankan
1. Clone repo ini
2. Import struktur database dari db.sql (jika ada)
3. Pastikan MySQL aktif dan database='alat_ukur' tersedia
4. Install dependency Flask
pip install flask mysql-connector-python
5. Jalankan server: python app.py
6. Buka http://localhost:5000 di browser

💡 Penjelasan Kode Penting
- generate_user_id() → bikin ID unik seperti U001, U002, dst.
- generate_response_id() → bikin ID unik jawaban seperti R000001
- categorize_score() → logika pembagian kategori pakai Mean Hipotetik + SD
- /submit → endpoint utama yang menyimpan semua data + menghitung hasil

📝 Catatan
- Tidak ada halaman admin atau user login – semua input bersifat satu arah.
- Kuesioner bersifat fleksibel, tinggal tambah data di tabel questions.
- Web cocok untuk penelitian skala kecil hingga sedang.
