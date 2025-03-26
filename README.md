# Flutter Assesment

Assessment para vacante de desarrollador flutter

## Requerimientos del Assessment
### Pagina de inicio
- Mostrar una lista de elementos obtenidos desde una API publica✅
- Cada elemento debe mostrar al menos nombre y una imagen✅
- Utilizar un manejador de estado (GetX)✅
- Implementar navegacion dentro de la apliación (GetX)✅
- Diseño limpio y responsivo a tamaños de pantalla✅

#### Implementaciones extra
- Login para la aplicacion con con manejo de errores✅
- Filtrado de datos del API para renderizacion dinamica✅
- Traduccion de aplicacion de acuerdo a configuracion del dispositivo✅

## Proceso de desarrrollo 
### Creacion de Mock up para el diseño
![Mock up Login](https://raw.githubusercontent.com/alanolv/CMAssessment/refs/heads/main/assets/images/login_mock.jpg "Título opcional")

![Mock up HomeScreen](https://raw.githubusercontent.com/alanolv/CMAssessment/refs/heads/main/assets/images/home_screen_mock.jpg "Título opcional")

![Mock up Detail](https://raw.githubusercontent.com/alanolv/CMAssessment/refs/heads/main/assets/images/detail_mock.jpg "Título opcional")

### Elección de librerias para el desarrollo
- GetX para manejo de estado y navegacion por su sencillez y facilidad de implementación
- Http para consumo de APi

### Desiciones durante el desarrollo

Para el desarrollo de esta aplicacion de tuvieron en cuenta sus requerimientos y debido a la naturaleza del proyecto de opto por usar get para la gestion de de estados y la navegacion debido a la sencillez y que permitiria un desarollo mas eficas, tambien se opto por una estetica simple pero apegada a una tematica proviniente de la API, incluyendo colores propios de esta

**Posibles mejoras**
- Implementacion de autenticacion con firebase para el login: Se manejo una estructura de proyecto que permite una facil implementacion de este metodo de autenticacion mediante controllers
- Filtros para datos del API: Se estructuro el codigo para futuras actualizaciones como agregar filtros que cambien los datos obtenidos

## Requisitos previos

Antes de comenzar, asegúrate de tener instalados los siguientes programas en tu máquina:

- [Flutter](https://flutter.dev/docs/get-started/install) (al menos la versión 3.7.2)
- [Dart](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio) o [Visual Studio Code](https://code.visualstudio.com/) con la extensión de Flutter instalada.
- [Xcode](https://developer.apple.com/xcode/) (si estás desarrollando para iOS).

## Instalación

Sigue los siguientes pasos para obtener una copia del proyecto en tu máquina local.

1. **Clonar el repositorio:**

   Si no has clonado el repositorio aún, usa el siguiente comando:

   ```bash
   git clone https://github.com/tu-usuario/tu-repositorio.git

2. **Instalar las dependencias:**

    Navega al directorio del proyecto y ejecuta:

    ```bash
    git clone https://github.com/tu-usuario/tu-repositorio.git

3. **Configurar los emuladores o dispositivos:**

    - Para emular un dispositivo Android, abre Android Studio y selecciona un dispositivo virtual.

4. **Ejecutar el proyecto:**
    Para ejecutar la aplicación en un emulador o dispositivo conectado, usa el siguiente comando:

    ```bash
    flutter run

### Dependencias
Este proyecto usa las siguientes dependencias:

**Flutter**: SDK principal para desarrollar aplicaciones móviles.

**get**: Usado para navegación y gestión de estado en la aplicación. GetX (Versión: 4.6.6)

**http**: Usado para realizar solicitudes HTTP a la API. http (Versión: 0.13.6)

