# Contador de Pasos - Flutter + Wear OS

Aplicación desarrollada para Wear OS utilizando la API Health Connect.

## Autores
- Carolina González - (@carogzv04)
- Natalie Fernández - (@sabbinat)
- Nicolás Lara - (@niikila)

## Funcionalidades
- Registra la cantidad de pasos realizados en las últimas 24 horas directamente desde el reloj inteligente. 
- Interfaz sencilla, intuitiva y adaptable a distintos tamaños de pantalla. 
- Arquitectura organizada bajo el patrón MVVM (Model-View-ViewModel). 
- Posibilidad de simular datos de pasos para pruebas locales (útil en dispositivos que no proporcionan datos reales).

## Permisos requeridos
La aplicación solicita los siguientes permisos para funcionar correctamente:

'android.permission.ACTIVITY_RECOGNITION'

'android.permission.BODY_SENSORS'

'android.permission.health.READ_STEPS'

'android.permission.health.CONNECT'

### Estos permisos son necesarios para acceder a los datos de pasos a través de Health Connect.

## Acceso a datos mediante Health Connect

- Se utiliza la API de Health Connect para obtener los pasos registrados en el reloj inteligente.
- La aplicación no accede a los pasos del smartphone, únicamente a los del reloj.
- Para pruebas, se puede activar una función de simulación de pasos, generando registros locales.

