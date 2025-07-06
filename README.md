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

##

### 🎮 Nivel 0:  - Practica

#### Descripción General
Este nivel está diseñado como un plataforma en 2D, ambientado en una cueva de tonos rojos intensos,
que le da un aspecto misterioso y desafiante. El objetivo principal del jugador es recolectar monedas
animadas mientras avanza por el escenario, saltando por las diferentes plataformas y finalmente llegar 
al portal para avnzar de nivel.

#### Estructura de Nodos

🔹 Node2D (Nodo Principal)
Es el nodo raíz que organiza todos los elementos del nivel. Dentro de este nodo se encuentran el jugador, plataformas, monedas, el HUD, zonas especiales y el portal.

#### Hub
Este nodo contiene la interfaz gráfica del usuario (HUD). En este nivel incluye:

Contador de monedas (Label o Sprite2D): Muestra cuántas monedas ha recolectado el jugador (por defecto inicia en "x00").

#### Moneda
Objeto coleccionable distribuido a lo largo del nivel. Cada vez que el jugador toca una moneda:

Se incrementa el contador del HUD.

La moneda desaparece con una animación y/o sonido.

Estructura típica de la moneda:

Area2D: Nodo base para detección de colisiones.

CollisionShape2D: Define el área de detección.

AnimatedSprite2D: Muestra una animación de la moneda girando o brillando.

Se utiliza la señal body_entered para detectar al jugador y ejecutar la recolección.

#### reset_area
Zona que detecta si el jugador cae. Al entrar en ella, probablemente se reinicie el nivel o se devuelva al jugador al punto de inicio. Incluye:

CollisionShape2D: Detecta colisiones.

Sprite2D: Representación visual del área de reinicio.

#### Portal
Representa la salida del nivel. El jugador debe llegar a este punto para completar la etapa. Contiene:

AnimatedSprite2D: Puede mostrar animaciones de brillo, giro o parpadeo.

CollisionShape2D: Detecta si el jugador ha llegado al portal.

##### Personaje
El jugador principal, ubicado inicialmente sobre una de las plataformas. Es controlado por el usuario y puede caminar, saltar y recolectar monedas.

#### Plataforma, Plataforma2, etc.
Son los elementos sobre los que el jugador se mueve. Están colocadas a distintas alturas y posiciones para generar retos de salto y navegación.

 #### Imagen Referente
(Coloca aquí la imagen que ya proporcionaste del nivel. Úsala como referencia visual en tu entrega).



## Caracteristicas

- Mecanicas Basicas Del Jugaador ( Saltar, Moverse de Izquierda a Derecha, Colliciones)

- Control Por Teclado

- Diseño de niveles Donde la Dificultad aumenta Con Cada Nivel

 ## 🛠️ Tecnologias
 - Motor:Godot Engine [Version]
 -  Lenguajes: GDScript
 -  Plataforma: Windows
 -  App: Visual Code & Github

   ## Capturas De Pantalla
   
   
