1era entrega

Entre los juegos de simulación de civilizaciones históricas y batallas hay uno que se destaca: El Eish. Es un juego en el que cada jugador escoge una civilización antigua y va desarrollando tecnologías y creando sus unidades. 

Se pide la codificación en SWI-Prolog, constando de una base de conocimientos con los predicados necesarios para obtener lo que se indica a continuación. Todos los predicados principales deben ser completamente inversibles.
Civilizaciones y tecnologías
Modelar lo necesario para representar los jugadores, las civilizaciones y las tecnologías, de la forma más conveniente para resolver los siguientes puntos. Incluir los siguientes ejemplos.
Ana, que juega con los romanos y ya desarrolló las tecnologías de herrería, forja, emplumado y láminas.
Beto, que juega con los incas y ya desarrolló herrería, forja y fundición.
Carola, que juega con los romanos y sólo desarrolló la herrería.
Dimitri, que juega con los romanos y ya desarrolló herrería y fundición.
Elsa no juega esta partida.
Saber si un jugador es experto en metales, que sucede cuando desarrolló las tecnologías de herrería, forja y o bien desarrolló fundición o bien juega con los romanos.
En los ejemplos, Ana y Beto son expertos en metales, pero Carola y Dimitri no.
Saber si una civilización es popular, que se cumple cuando la eligen varios jugadores (más de uno).
En los ejemplos, los romanos son una civilización popular, pero los incas no.
Saber si una tecnología tiene alcance global, que sucede cuando a nadie le falta desarrollarla.
En los ejemplos, la herrería tiene alcance global, pues Ana, Beto, Carola y Dimitri la desarrollaron.
Saber cuándo una civilización es líder. Se cumple cuando esa civilización alcanzó todas las tecnologías que alcanzaron las demás. Una civilización alcanzó una tecnología cuando algún jugador de esa civilización la desarrolló.
En los ejemplos, los romanos son una civilización líder pues entre Ana y Dimitri, que juegan con romanos, ya tienen todas las tecnologías que se alcanzaron.
