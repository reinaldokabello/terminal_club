---
layout: post
title: "Instale e use Arch-Osint no Big Linux (Arch) para OSINT sem conflitos"
date: 2025-08-12 22:00:00 -0300
categories: [linux, osint, arch, tutorial]
---

Se você usa **Big Linux** (base Arch) e quer uma solução fácil, estável e poderosa para OSINT, a melhor recomendação é o **Arch-Osint**.

### Por que Arch-Osint?

- Compatível com Arch Linux, evitando conflitos de dependência  
- Instalador automatizado com várias ferramentas OSINT populares  
- Modular e leve, você escolhe o que instalar  
- Atualizações simples via pacman e AUR

### Como instalar

```bash
git clone https://github.com/MikeHorn-git/arch-osint.git
cd arch-osint
chmod +x arch-osint
sudo ./arch-osint -a
