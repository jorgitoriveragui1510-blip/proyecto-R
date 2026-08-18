# Indice del proyecto - Punto 4: Demostracion practica con Git

Proyecto BASICO en R con control de versiones Git, para el punto 4
"DEMOSTRACION PRACTICA CON GIT" de la guia de exposicion (SENA).

## Contenido de la carpeta

- calculadora.R          -> Programa en R que calcula el promedio de 4 notas y dice si el estudiante aprueba
- README.md              -> Descripcion del proyecto
- respuestas_punto4.md   -> Respuestas ya listas para los 5 campos del punto 4 de la guia
- .git/                  -> Repositorio con el historial real de commits y la rama de trabajo

## Como comprobar que funciona

1. Instala R (gratis): https://cran.r-project.org/
2. Abre una terminal dentro de esta carpeta.
3. Ejecuta:
   Rscript calculadora.R
4. Debe imprimir las 4 notas, el promedio y si el estudiante aprobo o no.

## Como ver el historial de Git

Dentro de la carpeta, ejecuta:
   git log --oneline --graph --all

Para ver las ramas:
   git branch -a
