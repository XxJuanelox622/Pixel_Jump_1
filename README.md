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

### 🧩 Hub:
- Este nodo contiene la interfaz gráfica del usuario (HUD). En este nivel incluye:

### Contador de monedas:

- ( tiene un texturerect y 2 labels donde un label es x y el otro es 00 ): Muestra cuántas monedas ha
recolectado el jugador (por defecto inicia en "x00").

### 🪙 Moneda:

- Objeto coleccionable distribuido a lo largo del nivel. Cada vez que el jugador toca una moneda:

- Se incrementa el contador del HUD.

- Estructura de la moneda:

- Area2D: Nodo base para detección de colisiones.

- CollisionShape2D: Define el área de detección.

- AnimatedSprite2D: Muestra una animación de la moneda girando.

- Se utiliza la señal body_entered para detectar al jugador y ejecutar la recolección.

### ⚠️ reset_area:

- Zona que detecta si el jugador cae. Al entrar en ella,  se reinicie el nivel o se devuelva al jugador
 al punto de inicio. Incluye:

- CollisionShape2D: Detecta colisiones.

- Sprite2D: Representación visual del área de reinicio.

###  🚪 Portal:

- Representa la salida del nivel. El jugador debe llegar a este punto para completar la etapa. Contiene:

- AnimatedSprite2D: Le da la animacion al poprtal

- CollisionShape2D: Detecta si el jugador ha llegado al portal.

### 🧍Personaje:

- El jugador principal, ubicado inicialmente sobre una de las plataformas. Es controlado por el usuario y
 puede caminar, saltar y recolectar monedas al pasar en ellas.

### 🧱 Tipos de Plataformas en el Nivel:

- Fija: El jugador puede quedarse sobre ella sin que se mueva.

- Frágil:	Desaparece poco después de ser pisada. Exige avanzar con rapidez.

- Oscilatoria:	Se mueve de forma horizontal o vertical. Requiere saltar con precisión.

- Rebote:	Impulsa al jugador hacia arriba al tocarla. Útil para alcanzar zonas altas.
 
- Reinicio:	Si el jugador cae, entra en contacto con esta área y se reinicia la escena (nivel).


 ### Imagen Referente
![Captura de pantalla 2025-07-06 010949](https://github.com/user-attachments/assets/07382910-72e9-43b6-9d6c-d7ba98c0cdd3)



## 🎮 Nivel 1  


El jugador debe avanzar saltando entre plataformas hasta alcanzar el portal de salida. A lo largo del 
recorrido, se encuentran varias monedas que deben ser recolectadas. Estas monedas están colocadas estratégicamente
para guiar al jugador hacia el portal final. Si el jugador cae, reinicia desde el principio gracias a una zona de reinicio.

### Nodos principales del nivel (nivel2)
- Node2D: Nodo raíz del nivel.

### 🧩 Hub:

Este nodo contiene la interfaz gráfica del usuario (HUD). En este nivel incluye:

### Contador de monedas

- (Tiene un TextureRect y 2 Label, donde uno muestra la letra “x” y el otro el número “00”)
Muestra cuántas monedas ha recolectado el jugador (por defecto inicia en "x00").

### 🪙 Moneda:

- Objeto coleccionable distribuido a lo largo del nivel. Cada vez que el jugador toca una moneda:

- Se incrementa el contador del HUD.

- Estructura de la moneda:

- Area2D: Nodo base para detección de colisiones.

- CollisionShape2D: Define el área de detección.

- AnimatedSprite2D: Muestra una animación de la moneda girando.

- Se utiliza la señal body_entered para detectar al jugador y ejecutar la recolección.

### ⚠️ reset_area2:

- Zona que detecta si el jugador cae. Al entrar en ella, se reinicia el nivel.

- Incluye:

- CollisionShape2D: Detecta colisiones.

###  🚪 Portal:

- Representa la salida del nivel. El jugador debe llegar a este punto para completar la etapa.

- Contiene:

- AnimatedSprite2D: Le da la animación al portal.

- CollisionShape2D: Detecta si el jugador ha llegado al portal.

### 🧍 Personaje:

- El jugador principal, ubicado inicialmente sobre una de las plataformas. Es controlado por el usuario y
puede caminar, saltar y recolectar monedas al tocarlas.

### 🧱 Tipos de Plataformas en el Nivel:

- Fija: El jugador puede quedarse sobre ella sin que se mueva.

- Frágil:	Desaparece poco después de ser pisada. Exige avanzar con rapidez.

- Oscilatoria:	Se mueve de forma horizontal o vertical. Requiere saltar con precisión.

- Rebote:	Impulsa al jugador hacia arriba al tocarla. Útil para alcanzar zonas altas.
 
- Reinicio:	Si el jugador cae, entra en contacto con esta área y se reinicia la escena (nivel).


Imagen Referente
(Coloca aquí la imagen del Nivel 1 como referencia visual.)





 ### Imagen Referente
![Captura de pantalla 2025-07-06 021040](https://github.com/user-attachments/assets/20c087dc-c5b9-4e75-9a6c-815a5d9bbbe2)



## 🎮 Nivel 2 

En este nivel más extenso y desafiante, el jugador debe recorrer una ruta llena de plataformas,
para llegar al portal de salida. La estructura del terreno obliga a explorar en diferentes alturas,
y las monedas actúan nuevamente como guía visual del camino ideal. Si el jugador cae, se activa una
zona de reinicio.

### Nodos principales del nivel (nivel2)
Node2D: Nodo raíz del nivel.

### 🧩 Hub:
Este nodo contiene la interfaz gráfica del usuario (HUD). En este nivel incluye:

### Contador de monedas
- (Tiene un TextureRect y 2 Label, donde uno muestra la letra “x” y el otro el número “00”):
Muestra cuántas monedas ha recolectado el jugador (por defecto inicia en "x00").

### 🪙 Moneda:
Objeto coleccionable distribuido a lo largo del nivel. Cada vez que el jugador toca una moneda:

- Se incrementa el contador del HUD.
  
-  Estructura de la moneda:

- Area2D: Nodo base para detección de colisiones.

- CollisionShape2D: Define el área de detección.

- AnimatedSprite2D: Muestra una animación de la moneda girando.

- Se utiliza la señal body_entered para detectar al jugador y ejecutar la recolección.

### ⚠️ reset_area3:

- Zona que detecta si el jugador cae. Al entrar en ella, se reinicia el nivel.

- Incluye:

- CollisionShape2D: Detecta colisiones.

### 🚪 Portal:

- Representa la salida del nivel. El jugador debe llegar a este punto para completar la etapa.

- Contiene:

- AnimatedSprite2D: Le da la animación al portal.

- CollisionShape2D: Detecta si el jugador ha llegado al portal.

### 🧍Personaje:

- El jugador principal, ubicado inicialmente sobre una de las plataformas. Es controlado por el usuario y
puede caminar, saltar y recolectar monedas al tocarlas.


### 🧱 Tipos de Plataformas en el Nivel:

- Fija: El jugador puede quedarse sobre ella sin que se mueva.

- Frágil:	Desaparece poco después de ser pisada. Exige avanzar con rapidez.

- Oscilatoria:	Se mueve de forma horizontal o vertical. Requiere saltar con precisión.

- Rebote:	Impulsa al jugador hacia arriba al tocarla. Útil para alcanzar zonas altas.
 
- Reinicio:	Si el jugador cae, entra en contacto con esta área y se reinicia la escena (nivel).


###  Imagen Referente del Nivel
  ![Captura de pantalla 2025-07-06 130451](https://github.com/user-attachments/assets/0be9e0fc-4cd1-432b-ad96-3373d740190f)


## 🧍‍♂️ Personaje
Este es el jugador principal del juego controlado por el usuario. Puede caminar, saltar y recolectar monedas al pasar por ellas
a medida que avanza por los niveles.

### ⚙️ Estructura del Nodo Personaje

### 🧩 Nodo principal:

- Personaje (Es un CharacterBody2D )

### 🟦 CollisionShape2D:

- Define el área de colisión del personaje, lo que permite detectar plataformas, objetos y otros elementos.

 ### 🖼️ Sprite2D:
 
- Representa gráficamente al personaje (disedeño del personaje.

### 🎥 Camera2D:

- Sigue al personaje a lo largo del nivel para mantenerlo centrado en pantalla.

### 🎮 Comportamiento
- El personaje responde al teclado para moverse a izquierda y derecha.

- Puede saltar sobre plataformas.

- Al tocar una moneda (Area2D), activa una señal que incrementa el contador de monedas.

- Al caer en el área de reinicio, el nivel se reinicia automáticamente.

🖼️ Imagen Referente:
![Captura de pantalla 2025-07-06 220045](https://github.com/user-attachments/assets/5f24d614-7abc-42d1-bfe9-4ebd82a79589)



## 🪙 Objeto: 
Este objeto representa un ítem coleccionable dentro del nivel. Su función principal es 
aumentar el contador de monedas del jugador al ser recolectada. Se encuentra repartida por el escenario como parte del reto del nivel.

### ⚙️ Estructura del Nodo Moneda

### 🧩 Nodo principal:

- Moneda (tipo Area2D)
  
- Es el nodo raíz del objeto. Permite detectar cuándo el jugador entra en contacto con la moneda mediante colisiones.

###  🎞️ AnimatedSprite2D:

- Muestra la animación de la moneda girando o brillando.

- Utiliza texture animation, es decir, una secuencia de imágenes (spritesheet o múltiples frames)
-  que simulan movimiento o rotación.

- Mejora la visibilidad y atractivo del objeto en pantalla.

### 🟦 CollisionShape2D:

- Define el área en la que se detecta al jugador.

- Al entrar el personaje, se activa la señal body_entered.

- Esta señal se conecta para:

- Aumentar el contador de monedas.

- Reproducir un efecto visual o de sonido (opcional).

- Eliminar o desactivar la moneda.

  🖼️ Imagen Referente:
  ![Captura de pantalla 2025-07-06 220906](https://github.com/user-attachments/assets/eb5d975c-4b45-4053-a0b1-00a281402a7c)

  

## 🪙 Contador de Monedas (HUD)
Este es el sistema que muestra visualmente cuántas monedas ha recolectado el jugador. Es parte de la interfaz gráfica del juego
y no interactúa directamente con el mundo físico del personaje.

### ⚙️ Estructura del Nodo HUD

### 🧩 Nodo principal:

- 🔹 Hub ( CanvasLayer)
Nodo base del HUD. Se mantiene fijo en la pantalla sin importar el movimiento de la cámara.

- 🔸 TextureRect:
Muestra la imagen de la moneda (coin.png) como ícono representativo.


- 🔸 Label:
Texto que indica la cantidad actual de monedas recolectadas. Inicialmente, está en "x00".


- 🔸 ContadorMonedas:
Script conectado que actualiza el número mostrado en el Label conforme se recolectan monedas en el juego.


🧠 Funcionamiento

El nodo Hub se instancia en los niveles (ej. Level1) para mantenerse visible siempre.

Cuando el personaje colisiona con una moneda (Area2D), se dispara una señal (_on_puntuacion_actualizada) que 
llama a una función dentro del script ContadorMonedas.

El Label se actualiza automáticamente para mostrar el nuevo total de monedas.
 🖼️ Imagen Referente:
![Captura de pantalla 2025-07-06 222133](https://github.com/user-attachments/assets/31e98f5f-cb0d-4520-9e13-ace478a4289a)


## Descripción de los códigos empleados para el funcionamiento (EL CÓDIGO DEBE VENIR CON COMENTARIOS)


##🧍‍♂️ Script del Personaje – Pixel Jump

Este script controla al jugador en un juego de plataformas 2D. Permite moverse, saltar, recolectar monedas, 
reiniciar el nivel y cambiar entre escenas mediante portales.

```gdscript
extends CharacterBody2D

# =============================
# 🧠 VARIABLES DE MOVIMIENTO
# =============================

# Velocidad horizontal del jugador
var velocidad = 200

# Fuerza del salto (negativo porque en Godot hacia arriba es negativo en Y)
var brinco = -400

# Gravedad que se aplica cuando el jugador está en el aire
var gravedad = 1000

# =============================
# 🟢 INICIO DE LA ESCENA
# =============================

func _ready():
	# Añade este nodo al grupo "jugador"
	add_to_group("jugador")

# =============================
# 🕹️ MOVIMIENTO Y FÍSICA
# =============================

func _physics_process(delta):
	# Detectar dirección horizontal con teclas de entrada (ui_left, ui_right)
	var direccion = Input.get_axis("ui_left", "ui_right")
	
	# Aplicar la velocidad horizontal
	velocity.x = direccion * velocidad
	
	# Si no está en el suelo, aplicar gravedad
	if not is_on_floor():
		velocity.y += gravedad * delta
	
	# Si se presiona la tecla de salto y está en el suelo, aplicar salto
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = brinco
	
	# Ejecutar el movimiento con deslizamiento y colisiones
	move_and_slide()

# =============================
# 🔁 REINICIAR NIVEL
# =============================
# Estas funciones se activan cuando el jugador entra o sale de una zona de reinicio

@warning_ignore("unused_parameter")
func _on_reset_area_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene() # Reinicia la escena actual

@warning_ignore("unused_parameter")
func _on_reset_area_2_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()

@warning_ignore("unused_parameter")
func _on_reset_area_3_body_exited(body: Node2D) -> void:
	get_tree().reload_current_scene()


# =============================
# 🚪 CAMBIO DE NIVEL CON PORTALES
# =============================

# Portal del Nivel 0 al Nivel 1
@warning_ignore("unused_parameter")
func   _on_Portal_body_entered(body: Node2D) -> void:
	get_ tree().change_scene_to_file("res://Level1.tscn")

# Portal del Nivel 1 al Nivel 2
func _on_portal1_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Level2.tscn")

# Portal del Nivel 2 al Nivel 0 (reinicio del ciclo)
func _on_portal_2_body_exited(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Level0.tscn")
```


## 🧱 Script de Plataforma (plataforma.gd)
Este script define el comportamiento de diferentes tipos de plataformas interactivas
en un juego 2D hecho en Godot Engine 4. Cada plataforma puede tener distintos efectos como
rebotar, desaparecer, dañar al jugador o moverse.


```gdscript
extends Area2D

# =============================
# 🎛️ ENUMERACIÓN DE TIPOS DE PLATAFORMA
# =============================
# Define los tipos de plataforma disponibles
enum TipoPlataforma {FIJA, OSCILATORIA, FRAGIL, REBOTE, PICOS}

# =============================
# ⚙️ VARIABLES EXPORTADAS
# =============================

# Tipo de plataforma seleccionado desde el editor
@export var tipo: TipoPlataforma = TipoPlataforma.FIJA

# Fuerza de rebote para plataformas del tipo REBOTE
@export var fuerza_rebote := 2.0

# =============================
# 🚀 INICIALIZACIÓN
# =============================

func _ready():
	actualizar_plataforma()  # Establece el color y comportamiento según el tipo
	monitorable = true       # Habilita la detección de colisiones con cuerpos
	monitoring = true

# =============================
# 🎨 ACTUALIZACIÓN DE APARIENCIA Y COMPORTAMIENTO
# =============================

func actualizar_plataforma():
	match tipo:
		TipoPlataforma.FIJA:
			$Sprite2D.modulate = Color.GREEN  # Plataforma estática
		TipoPlataforma.OSCILATORIA:
			$Sprite2D.modulate = Color.BLUE   # Plataforma que se mueve horizontalmente
			oscilar()
		TipoPlataforma.FRAGIL:
			$Sprite2D.modulate = Color.RED    # Plataforma que desaparece al tocarla
		TipoPlataforma.REBOTE:
			$Sprite2D.modulate = Color.AQUA   # Plataforma que impulsa al jugador
		TipoPlataforma.PICOS:
			$Sprite2D.modulate = Color.PURPLE # Plataforma que reinicia el nivel

# =============================
# 📦 DETECCIÓN DE COLISIONES
# =============================

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		match tipo:

			# Plataforma frágil se destruye tras 0.5 segundos
			TipoPlataforma.FRAGIL:
				await get_tree().create_timer(0.5).timeout
				queue_free()

			# Plataforma con picos reinicia la escena
			TipoPlataforma.PICOS:
				get_tree().reload_current_scene()

			# Plataforma con rebote impulsa al jugador hacia arriba
			TipoPlataforma.REBOTE:
				# Si el cuerpo tiene un método personalizado para rebotar, úsalo
				if body.has_method("puede_rebotar"):
					body.puede_rebotar(fuerza_rebote)
				# Si no, aplica el rebote directamente
				else:
					body.velocity.y = body.brinco * fuerza_rebote

# =============================
# ↔️ MOVIMIENTO DE PLATAFORMA OSCILATORIA
# =============================

func oscilar():
	var tween = create_tween()
	tween.tween_property(self, "position:x", position.x + 100, 2)
	tween.tween_property(self, "position:x", position.x - 100, 2)
	tween.set_loops()  # Bucle infinito de ida y vuelta

# =============================
# ☠️ MÉTODO DE PELIGRO EXTRA (NO SE USA PERO ESTÁ DEFINIDO)
# =============================

func picos():
	get_tree().reload_current_scene()
```

## Script de Moneda (moneda.gd)
Este script permite que una moneda detecte al jugador, sume un punto al contador de puntuación y luego desaparezca.


```gdscript
# =============================
# 🔗 REFERENCIA AL CONTADOR
# =============================
# Se asume que hay un nodo llamado "Contador" en el árbol principal que tiene un método incrementa_un_punto()
@onready var contador: Node = %Contador

# =============================
# 🧍 DETECCIÓN DE COLISIÓN CON EL JUGADOR
# =============================
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):  # Solo el jugador puede recoger la moneda
		contador.incrementa_un_punto()  # Suma un punto al contador
		queue_free()  # Elimina la moneda de la escena
```


## Script de Contador de Monedas (contador.gd)
Este script administra la puntuación del jugador (como monedas recolectadas) y emite una señal
cada vez que se incrementa, permitiendo a otros nodos (como un HUD) reaccionar y actualizar su información en pantalla.


```gdscript
# =============================
# 💾 VARIABLE DE PUNTUACIÓN
# =============================
# Lleva el conteo total de puntos o monedas recolectadas
var puntuacion = 0 

# =============================
# 📡 SEÑAL PERSONALIZADA
# =============================
# Se emite cada vez que cambia la puntuación
signal puntuacion_actualizada(puntuacion_actual: int)

# =============================
# ➕ MÉTODO PARA AÑADIR PUNTOS
# =============================
func incrementa_un_punto():
	puntuacion += 1
	puntuacion_actualizada.emit(puntuacion)  # Notifica a los nodos conectados
```


## Script del HUD de Monedas (hud_monedas.gd)
Este script se encarga de mostrar el número actual de monedas recogidas por el jugador utilizando
una Label en la interfaz (CanvasLayer). Escucha una señal desde un nodo contador y actualiza el texto.

```gdscript
# =============================
# 🔢 REFERENCIA A LA ETIQUETA DE MONEDAS
# =============================
@onready var contador_monedas: Label = $ContadorMonedas

# =============================
# 🚀 INICIALIZACIÓN Y CONEXIÓN DE SEÑAL
# =============================
func _ready() -> void:
	# Busca el nodo Contador (se espera que se llame "Contador" y esté en el árbol de escena)
	var contador = get_node("%Contador")
	
	# Conecta la señal personalizada "puntuacion_actualizada" del contador a este script
	contador.puntuacion_actualizada.connect(_on_puntuacion_actualizada)

# =============================
# 📈 ACTUALIZACIÓN DE TEXTO EN PANTALLA
# =============================
func _on_puntuacion_actualizada(puntuacion_actual: int) -> void:
	# Convierte la puntuación a texto y la asigna al Label
	contador_monedas.text = str(puntuacion_actual)
```


 ## Redactar de manera detallada por integrante, las dificultades que se tuvieron al usar las herramientas colaborativas

### Juan Carlos
Lo que más me costó fue aprender a usar Visual Studio Code, porque nunca antes lo había usado. Al 
principio me sentía un poco perdido, no sabía cómo moverme bien ni para qué servía la terminal. Pero 
con el tiempo y práctica, ya me siento mucho más cómodo trabajando con él.

### Yaretzy Adalí
Para mí fue complicado usar GitHub y Visual Studio Code al mismo tiempo. No me aparecía el comando 
“clone” y no sabía cómo descargar el proyecto ni manejar bien el editor. Además, tenía miedo de hacer
algo mal y afectar el trabajo de Juan Carlos. Pero poco a poco, con su ayuda, fui entendiendo mejor y 
ahora me siento más segura.

 
## Una breve conclusión del uso e importancia de las herramientas colaborativas para el programador.
Las herramientas colaborativas son súper importantes para los programadores porque hacen que trabajar
en equipo sea mucho más fácil. Nos ayudan a compartir el código, evitar errores y mantener todo organizado
, incluso si no estamos en el mismo lugar. Usarlas bien hace que el trabajo sea más rápido y nos permite 
aprender unos de otros. En pocas palabras, son clave para hacer buen software y crecer como programador.   
