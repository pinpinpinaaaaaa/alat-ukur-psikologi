from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__)

# Koneksi ke database
conn = mysql.connector.connect(
    host='localhost',
    user='root',      # Ganti dengan username MySQL Anda
    password='',      # Ganti dengan password MySQL Anda
    database='alat_ukur'
)
cursor = conn.cursor()

def generate_user_id():
    """Generate user_id baru berdasarkan format U001, U002, ..."""
    cursor.execute("SELECT user_id FROM users ORDER BY user_id DESC LIMIT 1")
    result = cursor.fetchone()
    if result:
        last_id = int(result[0][1:])  # Mengambil angka dari U001
        new_id = f"U{last_id + 1:03d}"
    else:
        new_id = "U001"
    return new_id

def generate_response_id():
    """Generate response_id baru berdasarkan format R000001, R000002, ..."""
    cursor.execute("SELECT response_id FROM responses ORDER BY response_id DESC LIMIT 1")
    result = cursor.fetchone()
    if result:
        last_id = int(result[0][1:])  # Mengambil angka dari R000001
        new_id = f"R{last_id + 1:06d}"
    else:
        new_id = "R000001"
    return new_id
def generate_score_id():
    """Generate a unique id_user_scores based on the highest existing ID."""
    cursor.execute("SELECT id_user_scores FROM user_scores ORDER BY id_user_scores DESC LIMIT 1")
    result = cursor.fetchone()

    existing_ids = set()
    cursor.execute("SELECT id_user_scores FROM user_scores")
    for row in cursor.fetchall():
        existing_ids.add(row[0])

    if result:
        last_id = int(result[0][1:])  # Extract number from S000001
        new_id = None
        while not new_id or new_id in existing_ids:
            last_id += 1
            new_id = f"S{last_id:06d}"
    else:
        new_id = "S000001"
    
    return new_id


def categorize_score(total_score, num_questions):
    """Menentukan kategori berdasarkan Mean Hipotetik & SD"""
    X_max = num_questions * 4  # Semua jawaban 4 (skor tertinggi)
    X_min = num_questions * 1  # Semua jawaban 1 (skor terendah)
    
    mean_hypotetik = (X_max + X_min) / 2
    std_dev = (X_max - X_min) / 3 

    # Tentukan kategori berdasarkan Mean & SD
    if total_score <= mean_hypotetik - std_dev:
        return 'Rendah'
    elif total_score <= mean_hypotetik + std_dev:
        return 'Sedang'
    else:
        return 'Tinggi'
@app.route('/')
def index():
    cursor.execute("SELECT question_id, question_text FROM questions")
    questions = cursor.fetchall()

    cursor.execute("SELECT total_score, category FROM user_scores ORDER BY created_at DESC LIMIT 1")
    result = cursor.fetchone()

    total_score, category = result if result else (None, None)

    return render_template('index.html', questions=questions, total_score=total_score, category=category)

@app.route('/submit', methods=['POST'])
def submit():
    """Menyimpan jawaban user, menghitung total skor, dan menyimpan hasil kategorisasi"""
    name = request.form['name']
    age = request.form['age']
    gender = request.form['gender']
    user_id = generate_user_id()

    # Simpan data user ke tabel users
    cursor.execute("INSERT INTO users (user_id, name, age, gender) VALUES (%s, %s, %s, %s)", 
                   (user_id, name, age, gender))
    conn.commit()

    # Ambil semua pertanyaan untuk menyimpan jawaban
    cursor.execute("SELECT question_id FROM questions")
    questions = cursor.fetchall()
    num_questions = len(questions)

    total_score = 0  # Inisialisasi total skor

    # Simpan setiap jawaban ke dalam tabel responses
    for question_id, in questions:
        answer = request.form.get(f'q{question_id}')  # Ambil jawaban berdasarkan name input
        if answer:
            answer = int(answer)
            total_score += answer  # Menjumlahkan skor
            response_id = generate_response_id()
            cursor.execute("INSERT INTO responses (response_id, user_id, question_id, answer) VALUES (%s, %s, %s, %s)",
                           (response_id, user_id, question_id, answer))
            conn.commit()

    # Tentukan kategori berdasarkan Mean Hipotetik & SD
    category = categorize_score(total_score, num_questions)

    # Simpan total skor dan kategori ke tabel user_scores
    score_id = generate_score_id()
    cursor.execute("INSERT INTO user_scores (id_user_scores, user_id, total_score, category) VALUES (%s, %s, %s, %s)",
                   (score_id, user_id, total_score, category))
    conn.commit()

    # Redirect ke halaman utama agar hasil langsung muncul di index.html
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True)
