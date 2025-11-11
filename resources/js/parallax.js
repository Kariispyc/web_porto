// === Kode yang harus Anda SALIN ===

// 1. Inisialisasi Animate on Scroll (AOS)
AOS.init();

// 2. KODE BARU: Efek Parallax SMOOTH (Lerping)

// Cek dulu apakah kita di layar desktop
if (window.innerWidth > 768) {

    const heroImg = document.getElementById('hero-img');
    const heroText = document.getElementById('hero-text');

    // --- Pengaturan ---
    const speedImg = -0.1;  
    const speedText = 0.2; 
    const easeFactor = 0.08; 

    // Variabel untuk menyimpan posisi target (dari mouse)
    let targetX = 0;
    let targetY = 0;

    // Variabel untuk menyimpan posisi elemen saat ini (yang dianimasikan)
    let currentImgX = 0;
    let currentImgY = 0;
    let currentTextX = 0;
    let currentTextY = 0;

    // Optimasi: Memberitahu browser properti apa yang akan berubah
    if (heroImg) heroImg.style.willChange = 'transform';
    if (heroText) heroText.style.willChange = 'transform';

    // --- Listener Mouse ---
    document.addEventListener('mousemove', (e) => {
        targetX = (e.clientX - window.innerWidth / 2);
        targetY = (e.clientY - window.innerHeight / 2);
    });

    // --- Animation Loop ---
    const animationLoop = () => {
        currentImgX += (targetX * speedImg - currentImgX) * easeFactor;
        currentImgY += (targetY * speedImg - currentImgY) * easeFactor;

        currentTextX += (targetX * speedText - currentTextX) * easeFactor;
        currentTextY += (targetY * speedText - currentTextY) * easeFactor;

        if (heroImg) {
            heroImg.style.transform = `translateX(${currentImgX}px) translateY(${currentImgY}px)`;
        }
        if (heroText) {
            heroText.style.transform = `translateX(${currentTextX}px) translateY(${currentTextY}px)`;
        }

        requestAnimationFrame(animationLoop);
    };

    // Mulai animation loop!
    animationLoop();
}