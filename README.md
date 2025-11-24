# Plataformas

**Plataformas** es un videojuego de **plataformas 2D** desarrollado en **Godot 4**, compuesto por **tres niveles**:  
1. **Campo**  
2. **Cueva**  
3. **Salto de plataformas**

El objetivo es **llegar al final de cada nivel**, **recoger monedas**, y **evitar a los enemigos**.  
Si el jugador toca a un enemigo, morirá y **volverá automáticamente al nivel 1**.

---

##  Controles

### Movimiento
- **A** → Mover a la izquierda  
- **D** → Mover a la derecha  
- **←** → Mover a la izquierda  
- **→** → Mover a la derecha  

### Acción / Saltar
- **Enter**

---

##  Objetivo del Juego

- Recoger todas las monedas que puedas  
- Superar los 3 niveles  
- No tocar a los enemigos  
- Si mueres → vuelves al nivel 1  

---

##  Cámara

La escena del jugador está acompañada por una **Camera2D** que sigue al personaje en todo momento, permitiendo niveles más grandes que la pantalla.

---

##  Características Técnicas

- Creado con **Godot Engine 4.5.1**
- Movimiento mediante `CharacterBody2D`
- Colisiones con `Area2D` para monedas y enemigos
- Sistema de reinicio al morir
- Tres escenas de niveles independientes
- Cámara que sigue al jugador (`Camera2D`)

---

##  Cómo Ejecutarlo

1. Descarga o clona este repositorio.  
2. Abre Godot 4 y selecciona la carpeta del proyecto.  
3. Ejecuta la escena principal (normalmente `main.tscn` o similar).  
4. ¡Juega y supera los tres niveles!

---

##  ¿Es necesario levantar un servidor?

**No.**  
Este es un videojuego de **plataformas 2D local** desarrollado en Godot, por lo que **no requiere ningún servidor** para funcionar.

Solo necesitas:  
- Abrir el proyecto en Godot 4 **o**  
- Ejecutar el archivo exportado (`.exe`, `.x86_64`, `.apk`, etc.)

El juego se ejecuta completamente **de manera local**, sin conexión ni servicios externos.

---

##  Posibles Mejoras Futuras

- Sistema de vidas  
- Nuevos niveles  
- Más enemigos  
- Power-ups  
- Guardado de progreso  
- Modo contrarreloj  

---

##  Créditos

- Programación: Sara Silva González  
- Motor del juego: Godot Engine 4  


