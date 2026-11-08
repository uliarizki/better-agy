# Antigravity: The Apex Agent & Universal Kick-off Kit

Paket konfigurasi instan untuk menjadikan AI Agent di Google Antigravity memiliki disiplin rekayasa tingkat tinggi, bebas halusinasi, dan memiliki alur peluncuran proyek universal (`/start`).

---

## ⚡ Cara Setup Instan di PC Lain (Kurang dari 1 Menit)

### Untuk Windows (PowerShell)
Buka terminal PowerShell di PC baru dan jalankan:
```powershell
powershell -ExecutionPolicy Bypass -File .\setup-apex-agent.ps1
```

### Untuk Linux / macOS / WSL (Bash)
```bash
chmod +x ./setup-apex-agent.sh
./setup-apex-agent.sh
```

Script di atas akan secara otomatis:
1. Mendeteksi seluruh profil Antigravity di komputer tersebut (`~/.gemini/config/` dan `~/.antigravity-profiles/*/`).
2. Memasang ruleset global [`AGENTS.md`](file:///C:/Users/binta/.antigravity-profiles/uliarizki/.gemini/config/AGENTS.md).
3. Memasang skill universal [`/start`](file:///C:/Users/binta/.antigravity-profiles/uliarizki/.gemini/config/skills/start-project/SKILL.md).

---

## 🔌 Checklist Plugin Marketplace (Buka Antigravity > Customizations > Marketplace)

Setelah menjalankan script di atas, klik tombol **Add** pada 7 plugin pilar utama:
1. **Superpowers** — Disiplin TDD, Systematic Debugging, & Git Worktrees.
2. **Modern Web Guidance** — Standar HTML/CSS/JS modern bebas deprecated API.
3. **Context7** — Pustaka dokumentasi & kode contoh versi terbaru langsung dari repo.
4. **Chrome DevTools** — Automasi browser lokal, cek console error, & validasi UI.
5. **CodeRabbit** — AI code reviewer independen & auto-patcher sebelum commit.
6. **Vercel** — Hosting frontend Next.js/React online gratis 24/7.
7. **Supabase** — Database PostgreSQL, Auth, & Storage gratis 24/7.

> **Tips On-Demand**: Biarkan plugin **Figma** dan **Google Workspace** tetap dalam status *Disabled* di tab **Installed**, dan nyalakan hanya saat kamu memegang tugas yang membutuhkan file tersebut.

---

## 🚀 Cara Penggunaan Sehari-hari

Ketik di chat Antigravity:
```text
/start [ide atau topik proyek apa pun]
```
AI akan otomatis:
1. Mengidentifikasi apakah proyek ini **Koding**, **Bisnis/Produk**, **Riset/Tulisan**, atau **Desain**.
2. Menggali 3 parameter kunci: *Problem*, *Target Audience*, dan *Deliverable Akhir*.
3. Mengarahkan tools/skills yang relevan (TDD untuk koding, PRD untuk bisnis, dll).
4. Menyajikan *Task Roadmap Milestone* terstruktur yang siap dieksekusi langkah demi langkah.
