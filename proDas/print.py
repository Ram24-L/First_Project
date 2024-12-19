from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas

def create_pdf(filename):
    # Membuat canvas PDF dengan ukuran halaman letter
    c = canvas.Canvas(filename, pagesize=letter)
    width, height = letter
    
    # Menambahkan teks ke halaman
    c.drawString(100, 750, "Hello, this is a PDF created using ReportLab!")
    c.drawString(100, 730, "You can add more text or elements as needed.")
    
    # Menambahkan elemen grafis lainnya
    c.line(100, 700, 500, 700)  # Garis horizontal
    
    # Simpan file PDF
    c.save()

# Buat file PDF
create_pdf("output.pdf")
