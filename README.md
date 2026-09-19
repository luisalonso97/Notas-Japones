# Notas de Japónes

Notas tomadas de mis clases en [Futaba](https://academiafutaba.com/).

Repositorio principal: [git.lalonso.com](https://git.lalonso.com/luis_alonso/Notas-Japones)

## Software

TeX Live con soporte de Japónes:

```bash
sudo pacman -S texlive-meta texlive-langjapanese
```

Fuente utilizada:

```bash
sudo pacman -S noto-fonts-cjk
```

## Compilación

```bash
latexmk -cd -lualatex lv5/kanji/kanji.tex
```

Ejecuta el comando desde la raíz del repositorio. El `.latexmkrc` compartido
añade `templates/` a la ruta de búsqueda, por lo que el mismo comando funciona
para cualquier lección o archivo de kanji sin crear ni ajustar configuración
por nivel. Por ejemplo:

```bash
latexmk -cd -lualatex lv6/lv6_leccion_13.tex
```

Importante usar el engine `lualatex`.

## 一年目 (2025)

### Lv1 ~ Enero - Abril

Horario: 09:00 - 12:00

Notas hechas:

- [ ] Kanji
- [ ] 第１課
- [ ] 第２課
- [ ] 第３課
- [ ] 第４課
- [ ] 第５課
- [ ] 第６課

### Lv2 ~ Mayo - Agosto

Horario: 09:00 - 12:00

Notas hechas:

- [ ] Kanji
- [ ] 第７課
- [ ] 第８課
- [ ] 第９課
- [ ] 第１０課
- [ ] 第１１課
- [ ] 第１２課

### Lv3 ~ Septiembre - Diciembre

Horario: 09:00 - 12:00

Notas hechas:

- [x] Kanji
- [ ] 第１３課
- [ ] 第１４課
- [ ] 第１５課
- [x] 第１６課
- [ ] 第１７課
- [ ] 第１８課

Copyright (c) 2025 Luis Alonso

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License (CC BY-SA 4.0). To view a copy of this license, visit:
https://creativecommons.org/licenses/by-sa/4.0/
