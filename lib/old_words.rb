module Words
  def self.list
    words = [{
      id: 1,
      e: 'car',
      s: ['auto', 'carro', 'coche'],
      completed: false,
      active: false,
    },
    {
      id: 2,
      e: 'phone',
      s: ['móvil', 'celular', 'teléfono'],
      completed: false,
      active: false,
    },
    {
      id: 3,
      e: 'computer',
      s: ['computadora', 'computador', 'ordenador'],
      completed: false,
      active: false,
    },
    {
      id: 4,
      e: 'shoe',
      s: ['zapato', 'calzado', 'zapatos', 'zapatilla', 'botín', 'bota'],
      completed: false,
      active: false,
    },
    {
      id: 5,
      e: 'friend',
      s: ['amigo', 'amiga'],
      completed: false,
      active: false,
    },
    {
      id: 6,
      e: 'carpet',
      s: ['alfombra', 'moqueta', 'tapiz', 'tapete'],
      completed: false,
      active: false,
    },
    {
      id: 7,
      e: 'hair comb',
      s: ['peine'],
      completed: false,
      active: false,
    },
    {
      id: 8,
      e: 'chair',
      s: ['silla', 'sillón', 'asiento'],
      completed: false,
      active: false,
    },
    {
      id: 9,
      e: 'magazine',
      s: ['revista'],
      completed: false,
      active: false,
    },
    {
      id: 10,
      e: 'trousers',
      s: ['pantalón', 'pantalones'],
      completed: false,
      active: false,
    },
    {
      id: 11,
      e: 'eyelash',
      s: ['pestaña', 'pestañas'],
      completed: false,
      active: false,
    },
    {
      id: 12,
      e: 'keyboard',
      s: ['teclado'],
      completed: false,
      active: false,
    },
    {
      id: 13,
      e: 'comedy',
      s: ['comedia'],
      completed: false,
      active: false,
    },
    {
      id: 14,
      e: 'socks',
      s: ['medias', 'media', 'calcetines', 'calcetas'],
      completed: false,
      active: false,
    },
    {
      id: 15,
      e: 'tower',
      s: ['torre'],
      completed: false,
      active: false,
    },
    {
      id: 16,
      e: 'rabbit',
      s: ['conejo', 'coneja'],
      completed: false,
      active: false,
    },
    {
      id: 17,
      e: 'wig',
      s: ['peluca', 'peluquín'],
      completed: false,
      active: false,
    },
    {
      id: 18,
      e: 'table',
      s: ['mesa', 'tabla', 'cuadro', 'tablero'],
      completed: false,
      active: false,
    },
    {
      id: 19,
      e: 'window',
      s: ['ventana', 'ventanilla'],
      completed: false,
      active: false,
    },
    {
      id: 20,
      e: 'door',
      s: ['puerta', 'portón', 'portezuela'],
      completed: false,
      active: false,
    },
    {
      id: 21,
      e: 'shirt',
      s: ['camisa', 'camiseta', 'blusa', 'playera'],
      completed: false,
      active: false,
    },
    {
      id: 22,
      e: 'sofa',
      s: ['sofá'],
      completed: false,
      active: false,
    },
    {
      id: 23,
      e: 'book',
      s: ['libro', 'talonario', 'librillo', 'cartilla'],
      completed: false,
      active: false,
    },
    {
      id: 24,
      e: 'newspaper',
      s: ['periódico', 'diario'],
      completed: false,
      active: false,
    },
    {
      id: 25,
      e: 'article',
      s: ['artículo', 'objeto', 'producto'],
      completed: false,
      active: false,
    },
    {
      id: 26,
      e: 'item',
      s: ['ítem', 'objeto', 'artículo'],
      completed: false,
      active: false,
    },
    {
      id: 27,
      e: 'issue',
      s: ['tema', 'asunto', 'problema', 'cuestión', 'emisión'],
      completed: false,
      active: false,
    },
    {
      id: 28,
      e: 'case',
      s: ['caso', 'caja', 'causa', 'asunto', 'estuche', 'funda', 'maletín'],
      completed: false,
      active: false,
    },
    {
      id: 29,
      e: 'subject',
      s: ['sujeto', 'tema', 'asunto', 'asignatura'],
      completed: false,
      active: false,
    },
    {
      id: 30,
      e: 'topic',
      s: ['tema', 'asunto'],
      completed: false,
      active: false,
    },
    {
      id: 31,
      e: 'thing',
      s: ['cosa', 'objeto', 'cuestión', 'asunto'],
      completed: false,
      active: false,
    },
    {
      id: 32,
      e: 'help',
      s: ['ayuda'],
      completed: false,
      active: false,
    },
    {
      id: 33,
      e: 'bear',
      s: ['oso', 'osa'],
      completed: false,
      active: false,
    },
    {
      id: 34,
      e: 'peach',
      s: ['durazno', 'melocotón'],
      completed: false,
      active: false,
    },
    {
      id: 35,
      e: 'passion fruit',
      s: ['maracuyá', 'granadilla', 'parcha', 'curuba', 'parchita'],
      completed: false,
      active: false,
    },
    {
      id: 36,
      e: 'apple',
      s: ['manzana'],
      completed: false,
      active: false,
    },
    {
      id: 37,
      e: 'watermelon',
      s: ['sandía', 'patilla'],
      completed: false,
      active: false,
    },
    {
      id: 38,
      e: 'strawberry',
      s: ['fresa', 'frutilla', 'fresón'],
      completed: false,
      active: false,
    },
    {
      id: 39,
      e: 'pear',
      s: ['pera'],
      completed: false,
      active: false,
    },
    {
      id: 40,
      e: 'fork',
      s: ['tenedor', 'horquilla', 'bifurcación'],
      completed: false,
      active: false,
    },
    {
      id: 41,
      e: 'spoon',
      s: ['cuchara', 'cucharilla'],
      completed: false,
      active: false,
    },
    {
      id: 42,
      e: 'knife',
      s: ['cuchillo', 'cuchilla', 'navaja'],
      completed: false,
      active: false,
    },
    {
      id: 43,
      e: 'equation',
      s: ['ecuación'],
      completed: false,
      active: false,
    },
    {
      id: 44,
      e: 'team',
      s: ['equipo', 'grupo', 'yunta'],
      completed: false,
      active: false,
    },
    {
      id: 45,
      e: 'browser',
      s: ['navegador', 'navegadora', 'explorador'],
      completed: false,
      active: false,
    },
    {
      id: 46,
      e: 'website',
      s: ['sitio web', 'página web'],
      completed: false,
      active: false,
    },
    {
      id: 47,
      e: 'page',
      s: ['página', 'hoja', 'paje'],
      completed: false,
      active: false,
    },
    {
      id: 48,
      e: 'sword',
      s: ['espada'],
      completed: false,
      active: false,
    },
    {
      id: 49,
      e: 'shield',
      s: ['escudo', 'blindaje', 'protección'],
      completed: false,
      active: false,
    },
    {
      id: 50,
      e: 'brightness',
      s: ['brillo', 'luminosidad', 'claridad'],
      completed: false,
      active: false,
    },
    {
      id: 51,
      e: 'shine',
      s: ['brillo', 'resplandor'],
      completed: false,
      active: false,
    },
    {
      id: 52,
      e: 'player',
      s: ['jugador', 'jugadora', 'reproductor'],
      completed: false,
      active: false,
    },
    {
      id: 53,
      e: 'path',
      s: ['camino', 'sendero', 'trayectoria', 'ruta', 'recorrido', 'paso', 'curso', 'vía'],
      completed: false,
      active: false,
    },
    {
      id: 54,
      e: 'silk',
      s: ['seda'],
      completed: false,
      active: false,
    },
    {
      id: 55,
      e: 'wood',
      s: ['madera', 'leña', 'bosque', 'leño'],
      completed: false,
      active: false,
    },
    {
      id: 56,
      e: 'forest',
      s: ['bosque', 'selva'],
      completed: false,
      active: false,
    },
    {
      id: 57,
      e: 'paradise',
      s: ['paraíso'],
      completed: false,
      active: false,
    },
    {
      id: 58,
      e: 'bull',
      s: ['toro'],
      completed: false,
      active: false,
    },
    {
      id: 59,
      e: 'beer',
      s: ['cerveza'],
      completed: false,
      active: false,
    },
    {
      id: 60,
      e: 'bear',
      s: ['oso', 'osa'],
      completed: false,
      active: false,
    },
    {
      id: 61,
      e: 'lamp',
      s: ['lámpara', 'bombilla'],
      completed: false,
      active: false,
    },
    {
      id: 62,
      e: 'lantern',
      s: ['linterna', 'farol'],
      completed: false,
      active: false,
    },
    {
      id: 63,
      e: 'tablet',
      s: ['tableta', 'comprimido', 'pastilla', 'tabla'],
      completed: false,
      active: false,
    },
    {
      id: 64,
      e: 'screen',
      s: ['pantalla', 'rejilla', 'cortina'],
      completed: false,
      active: false,
    },
    {
      id: 65,
      e: 'trouble',
      s: ['problema', 'apuro', 'dificultad', 'molestia', 'angustia', 'pena', 'lío', 'preocupación', 'aprieto'],
      completed: false,
      active: false,
    },
    {
      id: 66,
      e: 'rainbow',
      s: ['arcoíris', 'arco iris'],
      completed: false,
      active: false,
    },
    {
      id: 67,
      e: 'medal',
      s: ['medalla', 'condecoración'],
      completed: false,
      active: false,
    },
    {
      id: 68,
      e: 'happiness',
      s: ['felicidad', 'alegría', 'dicha'],
      completed: false,
      active: false,
    },
    {
      id: 69,
      e: 'night',
      s: ['noche'],
      completed: false,
      active: false,
    },
    {
      id: 70,
      e: 'day',
      s: ['día'],
      completed: false,
      active: false,
    },
    {
      id: 71,
      e: 'soap',
      s: ['jabón'],
      completed: false,
      active: false,
    },
    {
      id: 72,
      e: 'wind',
      s: ['viento', 'aire'],
      completed: false,
      active: false,
    },
    {
      id: 73,
      e: 'breath',
      s: ['aliento', 'respiración', 'respiro'],
      completed: false,
      active: false,
    },
    {
      id: 74,
      e: 'sigh',
      s: ['suspiro'],
      completed: false,
      active: false,
    },
    {
      id: 75,
      e: 'whisper',
      s: ['susurro', 'cuchicheo', 'rumor'],
      completed: false,
      active: false,
    },
    {
      id: 76,
      e: 'reflection',
      s: ['reflejo', 'reflexión', 'pensamiento'],
      completed: false,
      active: false,
    },
    {
      id: 77,
      e: 'mirror',
      s: ['espejo'],
      completed: false,
      active: false,
    },
    {
      id: 78,
      e: 'bite',
      s: ['mordida', 'mordedura', 'bocado', 'picadura', 'mordisco'],
      completed: false,
      active: false,
    },
    {
      id: 79,
      e: 'sign',
      s: ['señal', 'signo', 'muestra', 'seña', 'cartel', 'letrero', 'rastro'],
      completed: false,
      active: false,
    },
    {
      id: 80,
      e: 'chest',
      s: ['cofre', 'pecho', 'cómoda'],
      completed: false,
      active: false,
    },
    {
      id: 81,
      e: 'thought',
      s: ['pensamiento', 'idea', 'reflexión'],
      completed: false,
      active: false,
    },
    {
      id: 82,
      e: 'hug',
      s: ['abrazo'],
      completed: false,
      active: false,
    },
    {
      id: 83,
      e: 'discomfort',
      s: ['molestia', 'incomodidad', 'malestar', 'inquietud'],
      completed: false,
      active: false,
    },
    {
      id: 84,
      e: 'theory',
      s: ['teoría'],
      completed: false,
      active: false,
    },
    {
      id: 85,
      e: 'button',
      s: ['botón', 'pulsador', 'interruptor', 'tecla'],
      completed: false,
      active: false,
    },
    {
      id: 86,
      e: 'letter',
      s: ['carta', 'letra'],
      completed: false,
      active: false,
    },
    {
      id: 87,
      e: 'document',
      s: ['documento', 'paper', 'file'],
      completed: false,
      active: false,
    },
    {
      id: 88,
      e: 'record',
      s: ['registro', 'récord', 'expediente', 'disco', 'historial', 'acta', 'antecedentes', 'grabacion'],
      completed: false,
      active: false,
    },
    {
      id: 89,
      e: 'life',
      s: ['vida', 'duración'],
      completed: false,
      active: false,
    },
    {
      id: 90,
      e: 'guilt',
      s: ['culpa', 'culpabilidad'],
      completed: false,
      active: false,
    },
    {
      id: 91,
      e: 'bottle',
      s: ['botella', 'biberón', 'envase', 'frasco'],
      completed: false,
      active: false,
    },
    {
      id: 92,
      e: 'painting',
      s: ['pintura', 'cuadro'],
      completed: false,
      active: false,
    },
    {
      id: 93,
      e: 'circle',
      s: ['círculo'],
      completed: false,
      active: false,
    },
    {
      id: 94,
      e: 'square',
      s: ['plaza', 'casilla', 'cuadro', 'escuadra', 'recuadro', 'cuadrado'],
      completed: false,
      active: false,
    },
    {
      id: 95,
      e: 'yellow',
      s: ['amarillo'],
      completed: false,
      active: false,
    },
    {
      id: 96,
      e: 'red',
      s: ['rojo'],
      completed: false,
      active: false,
    },
    {
      id: 97,
      e: 'green',
      s: ['verde'],
      completed: false,
      active: false,
    },
    {
      id: 98,
      e: 'sky',
      s: ['cielo'],
      completed: false,
      active: false,
    },
    {
      id: 99,
      e: 'heaven',
      s: ['cielo', 'paraíso'],
      completed: false,
      active: false,
    },
    {
      id: 100,
      e: 'drug',
      s: ['droga', 'fármaco', 'medicamento', 'medicina'],
      completed: false,
      active: false,
    },
    {
      id: 101,
      e: 'loneliness',
      s: ['soledad', 'aislamiento'],
      completed: false,
      active: false,
    },
    {
      id: 102,
      e: 'torture',
      s: ['tortura', 'tormento', 'suplicio'],
      completed: false,
      active: false,
    },
    {
      id: 103,
      e: 'foolishness',
      s: ['tontería', 'necedad', 'estupidez', 'idiotez', 'imprudencia', 'insensatez'],
      completed: false,
      active: false,
    },
    {
      id: 104,
      e: 'imprudence',
      s: ['imprudencia'],
      completed: false,
      active: false,
    },
    {
      id: 105,
      e: 'rudeness',
      s: ['rudeza', 'grosería'],
      completed: false,
      active: false,
    },
    {
      id: 106,
      e: 'icon',
      s: ['ícono', 'símbolo', 'ídolo', 'icono'],
      completed: false,
      active: false,
    },
    {
      id: 107,
      e: 'airplane',
      s: ['avión', 'aeroplano', 'aeronave'],
      completed: false,
      active: false,
    },
    {
      id: 108,
      e: 'pilot',
      s: ['piloto', 'práctico', 'guía'],
      completed: false,
      active: false,
    },
    {
      id: 109,
      e: 'priest',
      s: ['sacerdote', 'cura', 'clérigo', 'padre', 'pastor', 'párroco'],
      completed: false,
      active: false,
    },
    {
      id: 110,
      e: 'sin',
      s: ['pecado'],
      completed: false,
      active: false,
    },
    {
      id: 111,
      e: 'heart',
      s: ['corazón', 'centro'],
      completed: false,
      active: false,
    },
    {
      id: 112,
      e: 'soul',
      s: ['alma', 'espíritu'],
      completed: false,
      active: false,
    },
    {
      id: 113,
      e: 'guitar',
      s: ['guitarra'],
      completed: false,
      active: false,
    },
    {
      id: 114,
      e: 'drum',
      s: ['tambor', 'batería'],
      completed: false,
      active: false,
    },
    {
      id: 115,
      e: 'god',
      s: ['dios'],
      completed: false,
      active: false,
    },
    {
      id: 116,
      e: 'application',
      s: ['solicitud', 'aplicación', 'uso'],
      completed: false,
      active: false,
    },
    {
      id: 117,
      e: 'form',
      s: ['formulario', 'forma'],
      completed: false,
      active: false,
    },
    {
      id: 118,
      e: 'cold',
      s: ['frío', 'resfriado', 'resfrío'],
      completed: false,
      active: false,
    },
    {
      id: 119,
      e: 'hot',
      s: ['caliente', 'caluroso', 'cálido', 'ardiente', 'picante'],
      completed: false,
      active: false,
    },
    {
      id: 120,
      e: 'judgment',
      s: ['juicio', 'sentencia', 'fallo', 'criterio', 'opinión'],
      completed: false,
      active: false,
    },
    {
      id: 121,
      e: 'failure',
      s: ['fracaso', 'fallo', 'falla', 'avería'],
      completed: false,
      active: false,
    },
    {
      id: 122,
      e: 'farm',
      s: ['granja', 'hacienda', 'criadero', 'alquería'],
      completed: false,
      active: false,
    },
    {
      id: 123,
      e: 'ranch',
      s: ['rancho', 'hacienda', 'estancia'],
      completed: false,
      active: false,
    },
    {
      id: 124,
      e: 'smile',
      s: ['sonrisa', 'risa'],
      completed: false,
      active: false,
    },
    {
      id: 125,
      e: 'teeth',
      s: ['dientes', 'dentadura'],
      completed: false,
      active: false,
    },
    {
      id: 126,
      e: 'call',
      s: ['llamada', 'llamamiento', 'convocatoria'],
      completed: false,
      active: false,
    },
    {
      id: 127,
      e: 'ad',
      s: ['anuncio', 'aviso', 'publicidad', 'propaganda', 'comercial'],
      completed: false,
      active: false,
    },
    {
      id: 128,
      e: 'voice',
      s: ['voz'],
      completed: false,
      active: false,
    },
    {
      id: 129,
      e: 'name',
      s: ['nombre'],
      completed: false,
      active: false,
    },
    {
      id: 130,
      e: 'lastname',
      s: ['apellido', 'nombre de familia'],
      completed: false,
      active: false,
    },
    {
      id: 131,
      e: 'equality',
      s: ['igualdad', 'equidad', 'paridad'],
      completed: false,
      active: false,
    },
    {
      id: 132,
      e: 'constancy',
      s: ['constancia', 'perseverancia'],
      completed: false,
      active: false,
    },
    {
      id: 133,
      e: 'fidelity',
      s: ['fidelidad'],
      completed: false,
      active: false,
    },
    {
      id: 134,
      e: 'loyalty',
      s: ['lealtad'],
      completed: false,
      active: false,
    },
    {
      id: 135,
      e: 'picture',
      s: ['imagen', 'foto', 'cuadro', 'dibujo', 'visión', 'fotografía'],
      completed: false,
      active: false,
    },
    {
      id: 136,
      e: 'value',
      s: ['valor', 'precio'],
      completed: false,
      active: false,
    },
    {
      id: 137,
      e: 'worth',
      s: ['valor', 'valía'],
      completed: false,
      active: false,
    },
    {
      id: 138,
      e: 'relevance',
      s: ['relevancia', 'pertinencia', 'relación', 'importancia'],
      completed: false,
      active: false,
    },
    {
      id: 139,
      e: 'merit',
      s: ['mérito'],
      completed: false,
      active: false,
    },
    {
      id: 140,
      e: 'mountain',
      s: ['montaña', 'monte', 'cerro'],
      completed: false,
      active: false,
    },
    {
      id: 141,
      e: 'memory',
      s: ['memoria', 'recuerdo'],
      completed: false,
      active: false,
    },
    {
      id: 142,
      e: 'hate',
      s: ['odio'],
      completed: false,
      active: false,
    },
    {
      id: 143,
      e: 'love',
      s: ['amor'],
      completed: false,
      active: false,
    },
    {
      id: 144,
      e: 'translator',
      s: ['traductor'],
      completed: false,
      active: false,
    },
    {
      id: 145,
      e: 'interpreter',
      s: ['intérprete', 'traductor'],
      completed: false,
      active: false,
    },
    {
      id: 146,
      e: 'teacher',
      s: ['profesor', 'maestro', 'tutor', 'docente', 'instructor'],
      completed: false,
      active: false,
    },
    {
      id: 147,
      e: 'gym',
      s: ['gimnasio'],
      completed: false,
      active: false,
    },
    {
      id: 148,
      e: 'sport',
      s: ['deporte'],
      completed: false,
      active: false,
    },
    {
      id: 149,
      e: 'victim',
      s: ['víctima'],
      completed: false,
      active: false,
    },
    {
      id: 150,
      e: 'earth',
      s: ['tierra', 'suelo'],
      completed: false,
      active: false,
    },
    {
      id: 151,
      e: 'planet',
      s: ['planeta'],
      completed: false,
      active: false,
    },
    {
      id: 152,
      e: 'void',
      s: ['vacío', 'hueco', 'espacio', 'agujero', 'espacio'],
      completed: false,
      active: false,
    },
    {
      id: 153,
      e: 'chance',
      s: ['oportunidad', 'casualidad', 'azar', 'ocasión', 'posibilidad', 'suerte'],
      completed: false,
      active: false,
    },
    {
      id: 154,
      e: 'space',
      s: ['espacio', 'lugar', 'zona', 'sitio'],
      completed: false,
      active: false,
    },
    {
      id: 155,
      e: 'place',
      s: ['lugar','sitio', 'puesto', 'posición', 'plaza', 'casa'],
      completed: false,
      active: false,
    },
    {
      id: 156,
      e: 'room',
      s: ['habitación', 'sala', 'cuarto', 'espacio', 'pieza', 'sitio'],
      completed: false,
      active: false,
    },
    {
      id: 157,
      e: 'eye',
      s: ['ojo'],
      completed: false,
      active: false,
    },
    {
      id: 158,
      e: 'mouth',
      s: ['boca', ' desembocadura'],
      completed: false,
      active: false,
    },
    {
      id: 159,
      e: 'energy',
      s: ['energía', 'vigor'],
      completed: false,
      active: false,
    },
    {
      id: 160,
      e: 'little finger',
      s: ['meñique', 'dedo meñique', 'dedo pequeño'],
      completed: false,
      active: false,
    },
    {
      id: 161,
      e: 'word',
      s: ['palabra', 'término'],
      completed: false,
      active: false,
    },
    {
      id: 162,
      e: 'sea',
      s: ['mar'],
      completed: false,
      active: false,
    },
    {
      id: 163,
      e: 'ocean',
      s: ['océano'],
      completed: false,
      active: false,
    },
    {
      id: 164,
      e: 'air conditioner',
      s: ['aire acondicionado', 'acondicionador de aire'],
      completed: false,
      active: false,
    },
    {
      id: 165,
      e: 'world',
      s: ['mundo'],
      completed: false,
      active: false,
    },
    {
      id: 166,
      e: 'century',
      s: ['siglo'],
      completed: false,
      active: false,
    },
    {
      id: 167,
      e: 'question',
      s: ['pregunta', 'cuestión', 'duda', 'interrogación', 'problema'],
      completed: false,
      active: false,
    },
    {
      id: 168,
      e: 'witness',
      s: ['testigo', 'testimonio', 'espectador'],
      completed: false,
      active: false,
    },
    {
      id: 169,
      e: 'viewer',
      s: ['espectador', 'telespectador', 'televidente'],
      completed: false,
      active: false,
    },
    {
      id: 170,
      e: 'television',
      s: ['televisión', 'televisor'],
      completed: false,
      active: false,
    },
    {
      id: 171,
      e: 'band',
      s: ['banda', 'venda', 'grupo', 'cinta'],
      completed: false,
      active: false,
    },
    {
      id: 172,
      e: 'gang',
      s: ['banda', 'pandilla', 'cuadrilla', 'grupo'],
      completed: false,
      active: false,
    },
    {
      id: 173,
      e: 'soldier',
      s: ['soldado', 'militar'],
      completed: false,
      active: false,
    },
    {
      id: 174,
      e: 'restlessness',
      s: ['inquietud', 'intranquilidad', 'agitación'],
      completed: false,
      active: false,
    },
    {
      id: 175,
      e: 'peace',
      s: ['paz', 'tranquilidad'],
      completed: false,
      active: false,
    },
    {
      id: 176,
      e: 'justice',
      s: ['justicia'],
      completed: false,
      active: false,
    },
    {
      id: 177,
      e: 'evil',
      s: ['mal', 'maldad'],
      completed: false,
      active: false,
    },
    {
      id: 178,
      e: 'malice',
      s: ['malicia', 'maldad', 'dolo', 'malevolencia'],
      completed: false,
      active: false,
    },
    {
      id: 179,
      e: 'dare',
      s: ['desafío', 'atrevimiento', 'reto'],
      completed: false,
      active: false,
    },
    {
      id: 180,
      e: 'pain',
      s: ['dolor', 'pena', 'sufrimiento'],
      completed: false,
      active: false,
    },
    {
      id: 181,
      e: 'invention',
      s: ['invento', 'invención'],
      completed: false,
      active: false,
    },
    {
      id: 182,
      e: 'footprint',
      s: ['huella', 'pisada', 'rastro'],
      completed: false,
      active: false,
    },
    {
      id: 183,
      e: 'knowledge',
      s: ['conocimiento', 'conocimientos', 'saber'],
      completed: false,
      active: false,
    },
    {
      id: 184,
      e: 'heat',
      s: ['calor', 'calefacción'],
      completed: false,
      active: false,
    },
    {
      id: 185,
      e: 'wisdom',
      s: ['sabiduría', 'juicio', 'saber'],
      completed: false,
      active: false,
    },
    {
      id: 186,
      e: 'patience',
      s: ['paciencia'],
      completed: false,
      active: false,
    },
    {
      id: 187,
      e: 'absence',
      s: ['ausencia', 'falta'],
      completed: false,
      active: false,
    },
    {
      id: 188,
      e: 'mix',
      s: ['mezcla', 'combinación'],
      completed: false,
      active: false,
    },
    {
      id: 189,
      e: 'dream',
      s: ['sueño', 'ensueño', 'ideal'],
      completed: false,
      active: false,
    },
    {
      id: 190,
      e: 'hesitation',
      s: ['duda', 'vacilación', 'indecisión'],
      completed: false,
      active: false,
    }];
  end
end