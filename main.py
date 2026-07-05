from matrix_chain import matrix_chain_order
def main():
    print("PARTICIONAMIENTO ÓPTIMO DE MATRICES")
    print("----------------------------------")
    n = int(input("Cantidad de matrices: "))
    dimensiones = []
    print("\nIngrese las dimensiones:")
    for i in range(n + 1):
        dimensiones.append(
            int(input(f"Dimension {i + 1}: "))
        )
    costos = matrix_chain_order(dimensiones)
    print("\nTabla de costos mínimos:\n")
    for fila in costos:
        for valor in fila:
            print(f"{valor:<10}", end="")
        print()
    print("\nCosto mínimo de multiplicaciones:", costos[0][n - 1])
if __name__ == "__main__":
    main()