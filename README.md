# Wagtail CMS Project

Este es un proyecto CMS construido con Wagtail, un CMS flexible y moderno basado en Django.

## Requisitos

- Python 3.9+
- pip (gestor de paquetes de Python)
- virtualenv

## Instalación Local

1. Clonar el repositorio:
```bash
git clone <url-del-repositorio>
cd wagtail-pruebas
```

2. Crear y activar entorno virtual:
```bash
python -m venv venv
source venv/bin/activate  # En Windows: venv\Scripts\activate
```

3. Instalar dependencias:
```bash
pip install -r requirements.txt
```

4. Configurar variables de entorno:
```bash
cp .env.example .env
# Editar .env con tus configuraciones
```

5. Realizar migraciones:
```bash
python manage.py migrate
```

6. Crear superusuario:
```bash
python manage.py createsuperuser
```

7. Recolectar archivos estáticos:
```bash
python manage.py collectstatic
```

8. Iniciar servidor de desarrollo:
```bash
python manage.py runserver
```

## Despliegue en Producción

1. Instalar dependencias de producción:
```bash
pip install -r requirements-prod.txt
```

2. Configurar variables de entorno para producción en `.env`

3. Iniciar con Gunicorn:
```bash
gunicorn -c gunicorn.conf.py mysite.wsgi:application
```

## Acceso

- Panel de administración: http://localhost:8000/admin/
- Sitio público: http://localhost:8000/

## Mantenimiento

- Para actualizar dependencias:
```bash
pip install --upgrade -r requirements.txt
```

- Para realizar migraciones después de cambios en modelos:
```bash
python manage.py makemigrations
python manage.py migrate
```
