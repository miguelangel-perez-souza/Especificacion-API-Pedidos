# Gestion de pedidos

_El proyecto trata de especificar el modelo para la futura gestión de pedidos_

_Realizado por Santiago Caro, Miguel Angel Perez & Ivan Pulido_

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

Mira **Deployment** para conocer como desplegar el proyecto.


### Clonado del proyecto 📋
_En un GitBash se ejecutara el siguente comnando_

```git clone  https://github.com/santiagocarod/Especificacion-API-Pedidos.git```

### Arranque de la especificación🔧

_Se ejecutaran los siguentes comandos para el arranque_

1. Para ejecutar el servidor de **prism** para realizar el **mock**:

```docker run -p 4010:4010 santiagocarod/api_mock_grupo3_pedidos```

**Ó**

en local:
(dentro de la carpeta api):

``` docker build -t api_mock_grupo3_pedidos . ```

y despues :

```docker run -p 4010:4010 api_mock_grupo3_pedidos```

2. Para ejecutar la interfaz gráfica de **Swagger/UI**:

```docker run -p 80:8080 santiagocarod/api_ui_grupo3_pedidos```

**Ó**

en local:
(fuera de la carpeta api):

``` docker build -t api_ui_grupo3_pedidos . ```

y despues :

```docker run -p 80:8080 api_ui_grupo3_pedidos```

## Ejecutando las pruebas ⚙️

Entrar a ``` http://127.0.0.1 ``` y se pueden ver los metodos soportados con la interfaz gráfica de Swagger

Tambien se puede ingresar a ``` http://127.0.0.1:4010/pedidos ``` para probar el metodo get de pedidos directamente al servidor.
