# calculadora.R
# Programa basico en R para el SENA
# Calcula el promedio de 4 notas de un estudiante

nota1 <- 4.5
nota2 <- 3.8
nota3 <- 4.0
nota4 <- 3.5

promedio <- (nota1 + nota2 + nota3 + nota4) / 4

cat("Nota 1:", nota1, "\n")
cat("Nota 2:", nota2, "\n")
cat("Nota 3:", nota3, "\n")
cat("Nota 4:", nota4, "\n")
cat("Promedio:", promedio, "\n")

if (promedio >= 3.0) {
  cat("Resultado: Aprobado\n")
} else {
  cat("Resultado: Reprobado\n")
}
