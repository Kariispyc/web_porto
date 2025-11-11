<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portofolio Saya</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <style>
        spline-viewer.background-spline {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -10;
            pointer-events: none;
        }
    </style>
</head>

{{-- PERUBAHAN: Menambahkan scroll-pt-20 (scroll-padding-top) agar section tidak tertutup header --}}
<body class="bg-gray-900 text-gray-100 font-sans scroll-smooth scroll-pt-20">

    {{-- === HEADER / NAVIGASI BARU === --}}
    <header class="fixed top-0 left-0 right-0 z-50 bg-black/70 backdrop-blur-sm border-b border-white/10">
        <nav class="max-w-6xl mx-auto flex items-center justify-between py-4 px-6">
            
            <div>
                <a href="#hero" class="text-xl font-bold text-white hover:text-cyan-400 transition-colors duration-300">
                    {{ $biodatas->nama ?? 'Portfolio' }}
                </a>
            </div>

            <ul class="hidden md:flex items-center space-x-6 lg:space-x-8">
                <li>
                    <a href="#about" class="text-gray-300 hover:text-cyan-400 hover:drop-shadow-[0_0_4px_theme(colors.cyan.400)] transition-all duration-300 font-medium">
                        Tentang Saya
                    </a>
                </li>
                <li>
                    <a href="#pendidikan" class="text-gray-300 hover:text-cyan-400 hover:drop-shadow-[0_0_4px_theme(colors.cyan.400)] transition-all duration-300 font-medium">
                        Pendidikan
                    </a>
                </li>
                <li>
                    <a href="#pengalaman" class="text-gray-300 hover:text-cyan-400 hover:drop-shadow-[0_0_4px_theme(colors.cyan.400)] transition-all duration-300 font-medium">
                        Pengalaman
                    </a>
                </li>
                <li>
                    <a href="#keahlian" class="text-gray-300 hover:text-cyan-400 hover:drop-shadow-[0_0_4px_theme(colors.cyan.400)] transition-all duration-300 font-medium">
                        Keahlian
                    </a>
                </li>
                <li>
                    <a href="#portfolio" class="text-gray-300 hover:text-cyan-400 hover:drop-shadow-[0_0_4px_theme(colors.cyan.400)] transition-all duration-300 font-medium">
                        Portfolio
                    </a>
                </li>
            </ul>
        </nav>
    </header>
    {{-- === AKHIR HEADER === --}}


{{-- - --

    <script type="module" src="https://unpkg.com/@splinetool/viewer@1.10.99/build/spline-viewer.js"></script>
    <spline-viewer class="background-spline"
        url="https://prod.spline.design/cNUNA9S0xau7wqZT/scene.splinecode"></spline-viewer>

-- ------------------------=============================================--------------------------------- --}}

    {{-- Tata letak HTML Anda sudah benar, tidak ada yang diubah --}}
    <section id="hero" class="relative w-full h-screen flex items-center justify-center overflow-hidden">

        <div class="relative z-10 flex flex-col md:flex-row items-center justify-center md:space-x-10 px-6">

            <div data-aos="fade-right" data-aos-duration="1000" id="hero-img">
                <img src="{{ asset('images/Foto-profil.png') }}" alt="Foto Profil {{ $biodatas->nama ?? '' }}"
                    class="w-48 h-48 md:w-72 md:h-72 object-cover rounded-full border-2 border-cyan-400 shadow-2xl mb-6 md:mb-0 hover:border-cyan-300 transition-all duration-300">
            </div>

            <div class="text-center md:text-left" data-aos="fade-left" data-aos-duration="1000" id="hero-text">
                <h1 class="text-5xl md:text-7xl font-bold mb-4 text-white drop-shadow-lg">
                    Hallo!, Saya <span class="text-cyan-400">{{ $biodatas->nama ?? 'Nama Anda' }}</span>
                </h1>
                <p class="text-xl md:text-2xl text-gray-300 mb-8">Editor | Designer | Videographer</p>
                <a href="#about"
                    class="px-6 py-3 bg-cyan-500 hover:bg-cyan-600 text-white rounded-full shadow-lg transition-all duration-300">
                    Lihat Selengkapnya
                </a>
            </div>

        </div>

        <div class="absolute bottom-10 animate-bounce text-gray-400 z-10">
            <a href="#about">↓</a>
        </div>
    </section>

   {{-- === SECTION 2: ABOUT === --}}
    <section id="about" class="py-24 px-6 md:px-20 bg-gray-900/40 backdrop-blur-md border-t border-b border-white/5">
        <div class="max-w-5xl mx-auto text-center">
            <h2 class="text-4xl font-bold mb-8 text-cyan-400" data-aos="fade-up">Tentang Saya</h2>
            
            <p class="text-lg text-gray-300 leading-relaxed" data-aos="fade-up" data-aos-delay="200">
                {{ $biodatas->deskripsi ?? 'Belum ada deskripsi.' }}
            </p>

            <hr class="w-48 max-w-xs mx-auto my-10 border-gray-700/50" data-aos="fade-up" data-aos-delay="300">

            <div class="text-gray-400" data-aos="fade-up" data-aos-delay="400">
                
                <p class="mb-3">
                    <strong class="text-cyan-400 font-semibold">Tanggal Lahir:</strong>
                    <span class="text-gray-200 ml-2">
                        {{ $biodatas->tanggal_lahir ? \Carbon\Carbon::parse($biodatas->tanggal_lahir)->format('d F Y') : 'Belum diisi' }}
                    </span>
                </p>

                {{-- === PERUBAHAN DI SINI === --}}
                <p class="mb-3">
                    <strong class="text-cyan-400 font-semibold">Email:</strong>
                    
                    @if($biodatas->email)
                        {{-- Link 'mailto:' ditambahkan di sini --}}
                        <a href="mailto:{{ $biodatas->email }}" 
                           class="text-gray-200 ml-2 hover:text-cyan-400 hover:underline transition-all duration-300">
                            {{ $biodatas->email }}
                        </a>
                    @else
                        {{-- Tampil jika email kosong --}}
                        <span class="text-gray-500 ml-2 italic">
                            Belum diisi
                        </span>
                    @endif
                </p>
                {{-- === AKHIR PERUBAHAN === --}}

                <p>
                    <strong class="text-cyan-400 font-semibold">Alamat:</strong>
                    <span class="text-gray-200 ml-2">
                        {{ $biodatas->alamat ?? 'Belum diisi' }}
                    </span>
                </p>
            </div>

        </div>
    </section>

    {{-- === SECTION: PENDIDIKAN === --}}
    <section id="pendidikan" class="py-24 px-6 md:px-20 bg-gray-900/40 backdrop-blur-md border-b border-white/5">
        <div class="max-w-6xl mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12 text-cyan-400" data-aos="fade-up">Riwayat Pendidikan</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                @foreach($biodatas->pendidikans as $p)
                    <div class="p-6 bg-white/5 backdrop-blur-sm rounded-xl border border-white/10 hover:border-cyan-400/50 hover:bg-white/10 transition-all duration-300 shadow-lg text-left"
                        data-aos="zoom-in" data-aos-delay="{{ $loop->index * 100 }}">
                        <div class="flex justify-between items-center mb-2">
                            <h3 class="text-xl font-semibold text-white">{{ $p->nama_sekolah }}</h3>
                            <span class="text-cyan-400 text-sm flex-shrink-0 ml-2">{{ $p->tahun_masuk }} -
                                {{ $p->tahun_lulus }}</span>
                        </div>
                        <p class="text-gray-300 text-base italic mb-3">{{ $p->jenjang }} - {{ $p->jurusan }}</p>

                        <p class="text-gray-300 text-sm">{{ $p->keterangan }}</p>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    {{-- === SECTION: PENGALAMAN === --}}
    <section id="pengalaman" class="py-24 px-6 md:px-20 bg-gray-900/40 backdrop-blur-md border-b border-white/5">
        <div class="max-w-6xl mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12 text-cyan-400" data-aos="fade-up">Pengalaman Kerja</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                @foreach($biodatas->pengalamans as $exp)
                    <div class="p-6 bg-white/5 backdrop-blur-sm rounded-xl border border-white/10 hover:border-cyan-400/50 hover:bg-white/10 transition-all duration-300 shadow-lg text-left"
                         data-aos="fade-up" data-aos-delay="{{ $loop->index * 100 }}">
                        <div class="flex justify-between items-center mb-2">
                            <h2 class="text-xl font-semibold text-white">{{ $exp->jenis_pengalaman }} -
                                {{ $exp->nama_perusahaan }}
                            </h2>
                            
                            {{-- === PERUBAHAN DI SINI === --}}
                            <span class="text-cyan-400 text-sm flex-shrink-0 ml-2">
                                {{ $exp->tahun_mulai }}
                                {{-- Tambahkan dash dan tahun selesai HANYA JIKA tahun_selesai ada DAN berbeda --}}
                                @if($exp->tahun_selesai && $exp->tahun_selesai != $exp->tahun_mulai)
                                    - {{ $exp->tahun_selesai }}
                                @endif
                            </span>
                            {{-- === AKHIR PERUBAHAN === --}}

                        </div>
                        <div class="flex justify-between items-center mb-3">
                            <p class="text-gray-300 text-base italic">{{ $exp->posisi }}</p>
                            <span class="text-cyan-400 text-sm flex-shrink-0 ml-2">{{ $exp->bulan }}</span>
                        </div>
                        <p class="text-gray-300 text-sm leading-relaxed">{{ $exp->deskripsi }}</p>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    {{-- === SECTION: KEAHLIAN === --}}
    <section id="keahlian" class="py-24 px-6 md:px-20 bg-gray-900/40 backdrop-blur-md border-b border-white/5">
        <div class="max-w-6xl mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12 text-cyan-400" data-aos="fade-up">Keahlian Saya</h2>
            <div class="grid grid-cols-2 md:grid-cols-4 gap-8">

                @foreach($biodatas->skills as $s)
                    <div class="p-6 bg-white/5 backdrop-blur-sm rounded-xl border border-white/10 hover:border-cyan-400/50 hover:bg-white/10 transition-all duration-300 shadow-lg"
                        data-aos="zoom-in" data-aos-delay="{{ $loop->index * 100 }}">

                        <div class="flex items-center gap-4">

                            <img {{-- Ini adalah "Ternary Operator" Blade yang canggih --}} {{-- 1. Cek apakah path_foto ada
                                --}} @if($s->foto_skill) {{-- 2. Jika ada, cek tipe_sumber --}}
                                src="{{ $s->tipe_sumber == 'storage' ? asset('storage/' . $s->foto_skill) : asset($s->foto_skill) }}"
                                @else {{-- 3. Jika path_foto KOSONG, gunakan fallback --}}
                                src="{{ asset('images/Foto-profil.png') }}" @endif alt="{{ $s->nama_skill }}"
                                class="w-16 h-16 rounded-xl object-cover flex-shrink-0 border border-white/10">

                            <div class="text-left">
                                <h3 class="text-xl font-semibold text-white mb-1">{{ $s->nama_skill }}</h3>
                                <p class="text-gray-400 text-sm">Tingkat: {{ $s->tingkat }}</p>
                            </div>

                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </section>

   {{-- === SECTION: CERTIFICATE === --}}
    <section id="certificate" class="py-24 px-6 md:px-20 bg-gray-900/40 backdrop-blur-md border-b border-white/5">
        <div class="max-w-6xl mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12 text-cyan-400" data-aos="fade-up">Sertifikat & Penghargaan</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                @foreach($biodatas->certificates as $cert)
                    <div class="p-6 bg-white/5 backdrop-blur-sm rounded-xl border border-white/10 hover:border-cyan-400/50 hover:bg-white/10 transition-all duration-300 shadow-lg text-left"
                         data-aos="fade-up" data-aos-delay="{{ $loop->index * 100 }}">
                        
                        
                        <div class="flex justify-between items-start mb-2">
                            <h3 class="text-xl font-semibold text-white">{{ $cert->nama_penghargaan }}</h3>
                            
                            {{-- PERBAIKAN: Ditambahkan pt-1 (padding-top: 4px) agar sejajar --}}
                            <span class="text-cyan-400 text-sm flex-shrink-0 ml-4 pt-1">{{ $cert->tahun }}</span>
                        </div>

                        <p class="text-gray-400 text-sm mb-1">Pemberi: {{ $cert->pemberi_sertifikat }}</p>
                        
                        <p class="text-cyan-400 text-sm mb-1">Capaian: {{ $cert->capaian }}</p>
                        
                    </div>
                @endforeach

                @if($biodatas->certificates->isEmpty())
                    <p class="text-gray-500 italic col-span-3">Belum ada sertifikat yang ditampilkan.</p>
                @endif
            </div>
        </div>
    </section>

    {{-- === SECTION: PORTOFOLIO === --}}
    <section id="portfolio" class="py-24 px-6 md:px-20 bg-gray-900/40 backdrop-blur-md border-b border-white/5">
        <div class="max-w-6xl mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12 text-cyan-400" data-aos="fade-up">Projek Saya</h2>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-10">
                @foreach($biodatas->portofolios as $prt)
                    <div class="bg-white/5 backdrop-blur-sm rounded-xl overflow-hidden border border-white/10 hover:border-cyan-400/50 hover:bg-white/10 transition-all duration-300 shadow-lg"
                        data-aos="fade-up" data-aos-delay="{{ $loop->index * 100 }}">

                        <img src="{{ $prt->foto_project == 'storage' ? asset('storage/' . $prt->gambar_project) : asset($prt->gambar_project) }}"
                            alt="{{ $prt->nama_project ?? 'Project' }}" class="w-full h-56 object-cover">

                        <div class="p-6 text-left">
                            <div class="flex justify-between items-center mb-2">
                                <h3 class="text-xl font-semibold text-white">{{ $prt->nama_project ?? '-' }}</h3>
                                <span class="text-cyan-400 text-sm flex-shrink-0 ml-2">{{ $prt->tahun ?? '-' }}</span>
                            </div>
                            @if($prt->posisi)
                                <p class="italic text-gray-400 text-sm mb-1">{{ $prt->posisi }}</p>
                            @endif
                            <p class="text-gray-300 text-sm">{{ $prt->deskripsi ?? '-' }}</p>
                        </div>
                    </div>
                @endforeach

                @if($biodatas->portofolios->isEmpty())
                    <p class="text-gray-500 italic col-span-3">Belum ada proyek yang ditampilkan.</p>
                @endif
            </div>
        </div>
    </section>



    {{-- === FOOTER === --}}
<footer class="py-12 bg-black/70 border-t border-white/5 backdrop-blur-sm">
    <div class="max-w-6xl mx-auto px-6">
        
        <div class="flex flex-col md:flex-row justify-between items-center text-center md:text-left space-y-8 md:space-y-0">
            
            <div class="space-y-4">
                
                <p class="text-lg font-bold text-white">{{ $biodatas->nama ?? 'Nama Anda' }}</p>
                
                <div class="text-sm text-gray-400 space-y-2">
                    @if($biodatas->alamat)
                        <p>
                            <strong class="text-gray-300">Alamat:</strong> {{ $biodatas->alamat }}
                        </p>
                    @endif
                    
                    @if($biodatas->email)
                        <p>
                            <strong class="text-gray-300">Email:</strong>
                            <a href="mailto:{{ $biodatas->email }}" 
                               class="hover:text-cyan-400 hover:underline transition-all duration-300">
                                {{ $biodatas->email }}
                            </a>
                        </p>
                    @endif
                </div>

                <p class="text-sm text-gray-500">
                    © 2025 {{ $biodatas->nama ?? 'Hikari Naufal' }}. Dibuat dengan Laravel + TailwindCSS.
                </p>
            </div>

            <div class="flex justify-center md:justify-end space-x-6">
                
                <a href="https://linkedin.com/in/hikarinaufal" class="text-gray-400 hover:text-cyan-400 transition" aria-label="LinkedIn">
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path fill-rule="evenodd" d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z" clip-rule="evenodd"/></svg>
                </a>

                <a href="https://github.com/Kariispyc" class="text-gray-400 hover:text-cyan-400 transition" aria-label="GitHub">
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path fill-rule="evenodd" d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.034c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.109-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.91 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" clip-rule="evenodd"/></svg>
                </a>

                 <a href="https://www.instagram.com/varaxess/" class="text-gray-400 hover:text-cyan-400 transition" aria-label="Instagram">
                   <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path fill-rule="evenodd" d="M12 0C8.74 0 8.333.015 7.053.072 5.775.132 4.905.333 4.14.63c-.789.306-1.459.717-2.126 1.384S.935 3.35.63 4.14C.333 4.905.131 5.775.072 7.053.012 8.333 0 8.74 0 12s.015 3.667.072 4.947c.06 1.277.261 2.148.558 2.913.306.788.717 1.459 1.384 2.126.667.666 1.336 1.079 2.126 1.384.766.296 1.636.499 2.913.558C8.333 23.988 8.74 24 12 24s3.667-.015 4.947-.072c1.277-.06 2.148-.262 2.913-.558.788-.306 1.459-.718 2.126-1.384.666-.667 1.079-1.335 1.384-2.126.296-.765.499-1.636.558-2.913.06-1.28.072-1.687.072-4.947s-.015-3.667-.072-4.947c-.06-1.277-.262-2.148-.558-2.913-.306-.789-.718-1.459-1.384-2.126C21.314.935 20.644.522 19.86.218 19.094-.08 18.223-.282 16.947-.34C15.667-.398 15.26-.413 12-.413h0zm0 2.163c3.203 0 3.585.012 4.85.07 1.17.055 1.805.249 2.227.415.562.217.96.477 1.382.896.419.42.679.819.896 1.381.164.422.36 1.057.413 2.227.057 1.266.07 1.646.07 4.85s-.012 3.585-.07 4.85c-.055 1.17-.249 1.805-.413 2.227-.217.562-.477.96-.896 1.382-.42.419-.819.679-1.381.896-.422.164-1.057.36-2.227.413-1.266.057-1.646.07-4.85.07s-3.585-.012-4.85-.07c-1.17-.055-1.805-.249-2.227-.413-.562-.217-.96-.477-1.382.896-.419-.42-.679.819-.896-1.381-.164.422-.36-1.057-.413-2.227-.057-1.266-.07-1.646-.07-4.85s.012-3.585.07-4.85c.055-1.17.249 1.805.413 2.227.217.562.477.96.896 1.382.42-.419.819.679 1.381.896.422.164 1.057.36 2.227.413 1.266-.057 1.646-.07 4.85-.07zM12 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.162 6.162 6.162 6.162-2.759 6.162-6.162S15.403 5.838 12 5.838zm0 10.162c-2.209 0-4-1.791-4-4s1.791-4 4-4 4 1.791 4 4-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z" clip-rule="evenodd"/></svg>
                </a>
            </div>

        </div>
    </div>
</footer>


</body>

</html>