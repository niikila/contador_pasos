# Contador de Pasos - Flutter + Wear OS

Aplicación para **Wear OS** que utiliza la API **Health Connect** para registrar pasos.

## Autores
- Carolina González (@carogzv04)
- Natalie Fernández (@sabbinat)
- Nicolás Lara (@niikila)

## Funcionalidades
- Registra la cantidad de pasos realizados en las últimas 24 horas directamente desde el reloj inteligente.
- Interfaz sencilla, intuitiva y adaptable a distintos tamaños de pantalla.
- Arquitectura organizada bajo el patrón MVVM (Model-View-ViewModel).
- Posibilidad de simular datos de pasos para pruebas locales (útil en dispositivos que no proporcionan datos reales).

## Permisos requeridos
La aplicación solicita los siguientes permisos para funcionar correctamente:

- `android.permission.ACTIVITY_RECOGNITION`
- `android.permission.BODY_SENSORS`
- `android.permission.health.READ_STEPS`
- `android.permission.health.CONNECT`

*Estos permisos son necesarios para acceder a los datos de pasos a través de Health Connect.*

## Acceso a datos mediante Health Connect
- Se utiliza la API de Health Connect para obtener los pasos registrados en el reloj inteligente.
- La aplicación no accede a los pasos del smartphone, únicamente a los del reloj.
- Para pruebas, se puede activar una función de simulación de pasos, generando registros locales.

## 🚀 Cómo ejecutar el proyecto

1. Clonar el repositorio:

    ```bash
    git clone https://github.com/niikila/contador_pasos.git
    cd contador_pasos
    ```

2. Abrir el proyecto con un IDE compatible con Flutter (por ejemplo, Android Studio o VS Code).

3. Conectar un dispositivo Wear OS real o iniciar un emulador Wear OS.

4. Ejecutar el proyecto con:

    ```bash
    flutter pub get
    flutter run
    ```

## 🛠 Simulación de pasos en el reloj

Durante el desarrollo, para simular actividad física en el reloj (emulador Wear OS), se pueden usar los siguientes comandos ADB (ejecutados desde la terminal de tu computadora):

1. Verifica los dispositivos conectados:

    ```bash
    adb devices
    ```

2. Reemplaza `[NOMBRE_DEL_EMULADOR]` por el nombre del emulador que obtuviste y ejecuta los comandos para controlar la simulación:

    ```bash
    adb -s [NOMBRE_DEL_EMULADOR] shell am broadcast -a "whs.USE_SYNTHETIC_PROVIDERS" com.google.android.wearable.healthservices
    adb -s [NOMBRE_DEL_EMULADOR] shell am broadcast -a "whs.synthetic.user.START_WALKING" com.google.android.wearable.healthservices
    adb -s [NOMBRE_DEL_EMULADOR] shell am broadcast -a "whs.synthetic.user.STOP_EXERCISE" com.google.android.wearable.healthservices
    ```

Estos comandos activan proveedores sintéticos, simulan el inicio de una caminata y detienen la simulación, respectivamente.
