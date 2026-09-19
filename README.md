# Notas de japonés

Notas tomadas de mis clases en [Futaba](https://academiafutaba.com/).

Repositorio principal: [git.lalonso.com](https://git.lalonso.com/luis_alonso/Notas-Japones)

## Estado actual

### Lv3

Fecha: `____ / ____ / ____`

- [x] Kanji
- [ ] 第１３課
- [ ] 第１４課
- [ ] 第１５課
- [x] 第１６課
- [x] 第１７課
- [ ] 第１８課

### Lv4

Fecha: `____ / ____ / ____`

- [x] Kanji
- [x] 第１課
- [x] 第２課
- [x] 第３課
- [x] 第４課
- [x] 第５課
- [x] 第６課

### Lv5

Fecha: `____ / ____ / ____`

- [x] Kanji
- [x] 第７課
- [x] 第８課
- [x] 第９課
- [x] 第１０課
- [x] 第１１課
- [x] 第１２課

### Lv6

Fecha: `____ / ____ / ____`

- [x] Kanji
- [x] 第１３課

Las lecciones son archivos fuente LuaLaTeX dentro de su directorio `lv*/`.
Los estilos compartidos se encuentran en `templates/`.

## Requisitos

TeX Live con soporte para japonés:

```bash
sudo pacman -S texlive-meta texlive-langjapanese
```

Fuente utilizada:

```bash
sudo pacman -S noto-fonts-cjk
```

## Compilación

Ejecuta `latexmk` desde la raíz del repositorio y usa siempre LuaLaTeX:

```bash
latexmk -cd -lualatex lv6/lv6_leccion_13.tex
```

El archivo compartido `.latexmkrc` añade `templates/` a la ruta de búsqueda,
por lo que el mismo comando funciona con cualquier lección o archivo de kanji.
Por ejemplo:

```bash
latexmk -cd -lualatex lv5/kanji/kanji.tex
```

Copyright (c) 2025-2026 Luis Alonso

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License (CC BY-SA 4.0). To view a copy of this license, visit:
https://creativecommons.org/licenses/by-sa/4.0/
