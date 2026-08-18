# Punto 4. DEMOSTRACION PRACTICA CON GIT - Respuestas

## URL del repositorio remoto (si aplica)
Sube este proyecto a GitHub con:
    git remote add origin <URL-de-tu-repositorio>
    git push -u origin master
Luego pega aqui esa URL, por ejemplo:
https://github.com/tuusuario/calculadora-notas-R.git

## Comandos Git utilizados en orden (y que hizo cada uno)
git init                                 -> Inicializa el repositorio local
git config user.name / user.email        -> Configura el nombre y correo del autor de los commits
git add .                                -> Agrega calculadora.R y README.md para guardarlos
git commit -m "Commit inicial..."        -> Guarda la primera version que funciona (promedio de 3 notas)
git checkout -b feature/agregar-nota4    -> Crea una rama nueva para trabajar sin dañar la version original
git add calculadora.R                    -> Agrega el cambio (se añadio una cuarta nota)
git commit -m "Agrega una cuarta nota..."-> Guarda el cambio en la rama
git checkout master                      -> Vuelve a la rama principal
git merge --no-ff feature/agregar-nota4  -> Une el cambio de la rama con la rama principal
git log --oneline --graph --all          -> Muestra todo el historial de commits y ramas

## Cambio realizado en la rama y como se verifico
En la rama feature/agregar-nota4 se agrego una cuarta nota (nota4) al programa,
y se ajusto la formula del promedio para dividir entre 4 en lugar de 3. Se
verifico ejecutando "Rscript calculadora.R" y revisando que el programa
imprimiera las 4 notas, calculara bien el promedio y mostrara correctamente
si el estudiante quedaba Aprobado o Reprobado. Como funciono sin errores,
se integro a la rama principal (master) con un merge.

## Resultado de "git log --oneline --graph --all" y que representa
*   df45a6e Integra rama feature/agregar-nota4 a main
|\
| * e5ff534 Agrega una cuarta nota al calculo del promedio
|/
* 4941830 Commit inicial: agrega programa basico que calcula el promedio de notas

Cada asterisco (*) es un commit. El commit de abajo es el inicial, hecho en
la rama principal. Las lineas | y / muestran que de ahi salio una rama nueva
(feature/agregar-nota4) donde se hizo el segundo commit. Por ultimo, el commit
de arriba (con dos lineas | \ uniendose) es el merge: el momento en que el
cambio de la rama se junto de nuevo con la rama principal.

## Ventajas que aporta Git al trabajo con R y al desarrollo colaborativo
Git permite guardar un historial de cada cambio hecho al programa, para poder
volver atras si algo se daña. Usar una rama (branch) permite probar cosas
nuevas, como agregar una nota mas, sin arriesgar la version que ya funciona.
Si se trabaja en equipo, cada persona puede tener su propia rama, hacer sus
cambios y luego juntarlos (merge) con el trabajo de los demas sin que se
borren o se pisen los cambios de otros. Ademas queda registrado quien hizo
cada cambio y por que, gracias a los mensajes de cada commit.
