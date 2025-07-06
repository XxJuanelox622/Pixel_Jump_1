# 🎮 PIXEL-JUMP

#### BY Yaretzy Adali & Juan Carlos

## Descriccion Brebe del juego
Es un juego De Plataformas Que Esta Desarrollado En Godot. Donde Eres un Vampiro Y Tienes Que Saltar Diferentes Plataformas Como
(Rebote, Osilatoria, Frajil, Fija Y de Reinicio)  Al Final De Cada Nivel Hay Un Portal Al Tocarlo Te teletramsporta Al Siguiente
Nivel el Cual Es Mas Dificil Que El Anterior

## Recursos Utilizados (imagenes, sonidos, etc)
#### Personaje
![Personaje.](https://github.com/XxJuanelox622/Pixel_Jump_1/blob/main/Vampires1_Walk_full.png?raw=true)
#### Fondo
![fondo.](https://github.com/XxJuanelox622/Pixel_Jump_1/blob/main/Preview.png?raw=true)
#### Obejeto
![coin.](https://github.com/XxJuanelox622/Pixel_Jump_1/blob/main/coin.png?raw=true)
#### Plataformas
![Plataforma.](https://github.com/XxJuanelox622/Pixel_Jump_1/blob/main/Platform.png?raw=true)
#### Portal
![Portal.](https://github.com/XxJuanelox622/Pixel_Jump_1/blob/main/Ship_portal_32x32.png?raw=true)

## Descripción de cada escena (nivel, plataforma, personaje, etc y una imagen referente)

### 🎮 Nivel 0:  - Practica

### Descripción General

Este nivel está diseñado como un juegos de plataforma en 2D, ambientado en una cueva de tonos rojos intensos,
que le da un aspecto misterioso y desafiante. El objetivo principal del jugador es recolectar monedas
 mientras avanza por el escenario, saltando por las diferentes plataformas y finalmente llegar 
al portal para avnzar de nivel. 

### Estructura de Nodos

- Node2D (Nodo Principal)
Es el nodo raíz que organiza todos los elementos del nivel. Dentro de este nodo se encuentran el jugador,
plataformas, monedas, el HUD, zonas especiales y el portal.

### 🧩 Hub
- Este nodo contiene la interfaz gráfica del usuario (HUD). En este nivel incluye:

Contador de monedas ( tiene un texturerect y 2 labels donde un label es x y el otro es 00 ): Muestra cuántas monedas ha recolectado
el jugador (por defecto inicia en "x00").

### Moneda

- Objeto coleccionable distribuido a lo largo del nivel. Cada vez que el jugador toca una moneda:

- Se incrementa el contador del HUD.

- Estructura de la moneda:

Area2D: Nodo base para detección de colisiones.

CollisionShape2D: Define el área de detección.

AnimatedSprite2D: Muestra una animación de la moneda girando.

Se utiliza la señal body_entered para detectar al jugador y ejecutar la recolección.

### reset_area

- Zona que detecta si el jugador cae. Al entrar en ella,  se reinicie el nivel o se devuelva al jugador
 al punto de inicio. Incluye:

CollisionShape2D: Detecta colisiones.

Sprite2D: Representación visual del área de reinicio.

###  🚪 Portal

- Representa la salida del nivel. El jugador debe llegar a este punto para completar la etapa. Contiene:

AnimatedSprite2D: Le da la animacion al poprtal

CollisionShape2D: Detecta si el jugador ha llegado al portal.

### 🧍Personaje
- El jugador principal, ubicado inicialmente sobre una de las plataformas. Es controlado por el usuario y
 puede caminar, saltar y recolectar monedas al pasar en ellas.

### 🧱 Tipos de Plataformas en el Nivel

Fija: El jugador puede quedarse sobre ella sin que se mueva.

Frágil:	Desaparece poco después de ser pisada. Exige avanzar con rapidez.

Oscilatoria:	Se mueve de forma horizontal o vertical. Requiere saltar con precisión.

Rebote:	Impulsa al jugador hacia arriba al tocarla. Útil para alcanzar zonas altas.
 
Reinicio:	Si el jugador cae, entra en contacto con esta área y se reinicia la escena (nivel).


 ### Imagen Referente
(Coloca aquí la imagen que ya proporcionaste del nivel. Úsala como referencia visual en tu entrega).

## 🎮 Nivel 1  


El jugador debe avanzar saltando entre plataformas hasta alcanzar el portal de salida. A lo largo del 
recorrido, se encuentran varias monedas que deben ser recolectadas. Estas monedas están colocadas estratégicamente
para guiar al jugador hacia el portal final. Si el jugador cae, reinicia desde el principio gracias a una zona de reinicio.

### Nodos principales del nivel (nivel2)
Node2D: Nodo raíz del nivel.

### 🧩 Hub
Este nodo contiene la interfaz gráfica del usuario (HUD). En este nivel incluye:

### Contador de monedas
(Tiene un TextureRect y 2 Label, donde uno muestra la letra “x” y el otro el número “00”):
Muestra cuántas monedas ha recolectado el jugador (por defecto inicia en "x00").

### Moneda
Objeto coleccionable distribuido a lo largo del nivel. Cada vez que el jugador toca una moneda:

Se incrementa el contador del HUD.

Estructura de la moneda:

Area2D: Nodo base para detección de colisiones.

CollisionShape2D: Define el área de detección.

AnimatedSprite2D: Muestra una animación de la moneda girando.

Se utiliza la señal body_entered para detectar al jugador y ejecutar la recolección.

### ⚠️ reset_area2
Zona que detecta si el jugador cae. Al entrar en ella, se reinicia el nivel.

Incluye:

CollisionShape2D: Detecta colisiones.


###  🚪 Portal
Representa la salida del nivel. El jugador debe llegar a este punto para completar la etapa.

Contiene:

AnimatedSprite2D: Le da la animación al portal.

CollisionShape2D: Detecta si el jugador ha llegado al portal.

### 🧍 Personaje

El jugador principal, ubicado inicialmente sobre una de las plataformas. Es controlado por el usuario y
puede caminar, saltar y recolectar monedas al tocarlas.

### 🧱 Tipos de Plataformas en el Nivel
Fija: El jugador puede quedarse sobre ella sin que se mueva.

Frágil:	Desaparece poco después de ser pisada. Exige avanzar con rapidez.

Oscilatoria:	Se mueve de forma horizontal o vertical. Requiere saltar con precisión.

 Rebote:	Impulsa al jugador hacia arriba al tocarla. Útil para alcanzar zonas altas.
 
Reinicio:	Si el jugador cae, entra en contacto con esta área y se reinicia la escena (nivel).


Imagen Referente
(Coloca aquí la imagen del Nivel 1 como referencia visual.)





🖼️ Imagen Referente del Nivel
(Inserta esta imagen junto a la descripción en tu documento)


## 🎮 Nivel 2 

En este nivel más extenso y desafiante, el jugador debe recorrer una ruta llena de plataformas,
para llegar al portal de salida. La estructura del terreno obliga a explorar en diferentes alturas,
y las monedas actúan nuevamente como guía visual del camino ideal. Si el jugador cae, se activa una
zona de reinicio.

### Nodos principales del nivel (nivel2)
Node2D: Nodo raíz del nivel.

### 🧩 Hub
Este nodo contiene la interfaz gráfica del usuario (HUD). En este nivel incluye:

Contador de monedas
(Tiene un TextureRect y 2 Label, donde uno muestra la letra “x” y el otro el número “00”):
Muestra cuántas monedas ha recolectado el jugador (por defecto inicia en "x00").

- Moneda
Objeto coleccionable distribuido a lo largo del nivel. Cada vez que el jugador toca una moneda:

Se incrementa el contador del HUD.

Estructura de la moneda:

Area2D: Nodo base para detección de colisiones.

CollisionShape2D: Define el área de detección.

AnimatedSprite2D: Muestra una animación de la moneda girando.

Se utiliza la señal body_entered para detectar al jugador y ejecutar la recolección.

### ⚠️ reset_area3
Zona que detecta si el jugador cae. Al entrar en ella, se reinicia el nivel.

Incluye:

CollisionShape2D: Detecta colisiones.

### 🚪 Portal
Representa la salida del nivel. El jugador debe llegar a este punto para completar la etapa.

Contiene:

AnimatedSprite2D: Le da la animación al portal.

CollisionShape2D: Detecta si el jugador ha llegado al portal.

### 🧍Personaje
El jugador principal, ubicado inicialmente sobre una de las plataformas. Es controlado por el usuario y
puede caminar, saltar y recolectar monedas al tocarlas.


### 🧱 Tipos de Plataformas en el Nivel

Fija: El jugador puede quedarse sobre ella sin que se mueva.

Frágil:	Desaparece poco después de ser pisada. Exige avanzar con rapidez.

Oscilatoria:	Se mueve de forma horizontal o vertical. Requiere saltar con precisión.

 Rebote:	Impulsa al jugador hacia arriba al tocarla. Útil para alcanzar zonas altas.
 
Reinicio:	Si el jugador cae, entra en contacto con esta área y se reinicia la escena (nivel).

### Diseño del Nivel

El recorrido del jugador incluye múltiples secciones en diferentes alturas. Las monedas colocadas en
 secuencia sirven como referencia visual para saber por dónde avanzar. Las plataformas se distribuyen
 en horizontal, zigzag y verticalmente, aumentando progresivamente la dificultad del salto y el cálculo
 de movimiento.

###  Imagen Referente del Nivel
  



## Caracteristicas 
 ## 🛠️ Tecnologias
 - Motor:Godot Engine [Version]
 -  Lenguajes: GDScript
 -  Plataforma: Windows
    
   ## Capturas De Pantalla
   
   
