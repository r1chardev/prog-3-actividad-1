# Seguimiento 2 - Ejercicios de Programación

Este directorio contiene tres ejercicios de programación que combinan **Elixir** y **Java** para la funcionalidad de interfaz de usuario.

## 📋 Requisitos del Sistema

### Java
- **Versión requerida**: Java 21 o superior
- **Verificar versión**: `java -version`
- **Nota importante**: Los archivos `.class` están compilados para Java 21. Si tienes una versión diferente, será necesario recompilar los archivos `Mensaje.java`:

```bash
# En cada directorio de ejercicio (ejercicio1, ejercicio2, ejercicio3)
javac Mensaje.java
```

### Elixir
- **Versión recomendada**: Elixir 1.12 o superior
- **Verificar versión**: `elixir --version`

## 🚀 Cómo ejecutar los ejercicios

### Ejercicio 1
```bash
cd ejercicio1/
javac Mensaje.java  # Solo si es necesario recompilar
elixir util.ex
elixir main.exs
```

### Ejercicio 2
```bash
cd ejercicio2/
javac Mensaje.java  # Solo si es necesario recompilar
elixir util.ex
elixir main.exs
```

### Ejercicio 3
```bash
cd ejercicio3/
javac Mensaje.java  # Solo si es necesario recompilar
elixir util.ex
elixir main.exs
```

## 📝 Descripción de los ejercicios

- **Ejercicio 1**: Programa básico de interacción con el usuario
- **Ejercicio 2**: Contador de letras en un mensaje
- **Ejercicio 3**: Calculadora de salario neto con horas extra

## ⚠️ Solución de problemas

### Error: UnsupportedClassVersionError
Este error indica que los archivos `.class` fueron compilados con una versión más reciente de Java. Solución:
```bash
javac Mensaje.java
```

### Warnings en Elixir
Es normal ver algunos warnings del compilador de Elixir. Estos no afectan la funcionalidad del programa.

## 🔧 Estructura de archivos

Cada ejercicio contiene:
- `main.exs`: Archivo principal de Elixir
- `util.ex`: Módulo de utilidades en Elixir
- `Mensaje.java`: Clase Java para interfaz de usuario
- `Mensaje.class`: Archivo compilado de Java
- `Elixir.Util.beam`: Archivo compilado de Elixir 