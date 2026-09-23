# Prompt para Mejorar el Codigo Base

Copia y pega el siguiente contenido completo en un asistente de IA (Claude, ChatGPT, etc.)
para obtener un ZIP con el proyecto arrancable. Si el adjunto es una carcasa (docs/placeholders),
el asistente debe materializar la estructura del stack del briefing, sin resolver las fases del reto.

---

```
## Briefing del reto (autoridad)
Este bloque manda sobre los archivos adjuntos. El stack y el rol salen de AQUÍ, no de un topic genérico ni de markdown placeholder.

### Perfil
Chapter Cloud Ops, Especialidad Analista, Advanced

### Brecha de conocimiento
Realiza implementaciones complejas de Infraestructura de nube, incluyendo ambientes de contenedores. Es capaz de desarrollar scripts de complejidad media para automatizar procesos administrativos sobre las infraestructuras. Implementa soluciones de monitoreo de la infraestructura relacionada, tanto en servicios tradicionales como microservicios y APIs. Define procedimiento para aplicar fixes y parches en SO y productos. Realiza hardening de SO, productos y servicios

### Misión / candidato
Candidato con experiencia en Cloud Ops a nivel Advanced

### Reto
- Tema: Administración de infraestructura
- Seniority: advanced-l3
- Tipo: practical
- Título: Desarrollo de soluciones de administración de infraestructura en la nube
- Tiempo estimado: 10-12 horas

### Fases (trabajo del HUMANO — PROHIBIDO completarlas)
No implementes estos entregables. Dejalos como hueco pedagógico. El asistente solo materializa el proyecto arrancable para que el participante pueda trabajar.
- Fase 1: Implementación de ambientes de contenedores — objetivo: Configurar un ambiente de contenedores para ejecutar aplicaciones en la nube. — entregable (NO resolver): Ambiente de contenedores configurado y funcionando.
- Fase 2: Automatización de procesos administrativos — objetivo: Desarrollar scripts para automatizar procesos administrativos sobre la infraestructura. — entregable (NO resolver): Scripts de automatización funcionales.
- Fase 3: Implementación de soluciones de monitoreo — objetivo: Configurar soluciones de monitoreo para la infraestructura de la nube. — entregable (NO resolver): Soluciones de monitoreo configuradas y funcionando.
- Fase 4: Aplicación de fixes y parches — objetivo: Definir un procedimiento para aplicar fixes y parches en sistemas operativos y productos. — entregable (NO resolver): Procedimiento documentado para la aplicación de fixes y parches.
- Fase 5: Fortalecimiento de la seguridad — objetivo: Fortalecer la seguridad de sistemas operativos, productos y servicios. — entregable (NO resolver): Medidas de seguridad implementadas y verificadas.

Eres un asistente experto en análisis, corrección y generación de archivos de cualquier tipo:
código fuente, documentación, hojas de cálculo, documentos Word, configuraciones, entre otros.
Voy a enviarte una cadena de texto que contiene uno o más archivos. Cada archivo está delimitado por un marcador con el siguiente formato:
// === ARCHIVO: ruta/del/archivo.extension ===
o también puede aparecer como:
## === ARCHIVO: ruta/del/archivo.extension ===
Lo que sigue al marcador puede ser:

El contenido real del archivo (código, texto, YAML, etc.)
Una descripción en lenguaje natural de lo que debe contener el archivo


TU TAREA
PASO 1 — Detección y extracción
Identifica todos los archivos presentes en la cadena. Para cada archivo extrae:

Su ruta completa (ej: src/main/java/com/pragma/Service.java)
Su contenido o descripción

PASO 2 — Clasificación por tipo
Clasifica cada archivo en una de estas categorías:
A) Código fuente (Java, Python, TypeScript, JavaScript, Kotlin, etc.)
B) Configuración / documentación (YAML, properties, Markdown, JSON, txt, etc.)
C) Excel (.xlsx, .xls, .csv)
D) Word (.docx, .doc)
E) Otro tipo de archivo binario o especial
PASO 3 — Clasificación de errores en código fuente

Objetivo prioritario: que el proyecto compile. No corrijas flujo de negocio ni lógica funcional.

Antes de modificar cualquier archivo de código fuente, clasifica cada problema encontrado en una de estas dos categorías:
🔴 ERROR DE COMPILACIÓN — corregir siempre
Son errores que impiden que el proyecto arranque, sin valor pedagógico:

Import faltante o incorrecto
Clase, método o variable referenciada que no existe en ningún archivo del proyecto
Error de sintaxis
Anotación con atributos inválidos
Dependencia ausente en pom.xml, package.json, etc.
Archivo referenciado que no existe y debe ser creado con implementación mínima

→ CORREGIR estos errores.
🟡 PROBLEMA FUNCIONAL O DE CALIDAD — preservar siempre
Son problemas que no impiden compilar. Pueden ser intencionales para el aprendizaje:

Clave secreta hardcodeada ("secret", "password123")
API deprecada que funciona pero tiene reemplazo moderno
Lógica de negocio incorrecta o incompleta
Código redundante o de baja legibilidad
Falta de validaciones en flujo de negocio
Patrones de diseño incorrectos pero funcionales
Concurrencia no segura
Configuración funcional pero no óptima

→ PRESERVAR tal cual. No corregir, no mejorar, no comentar.
PASO 4 — Procesamiento según tipo de archivo
Tipo A — Código fuente
Aplica únicamente las correcciones clasificadas como 🔴 ERROR DE COMPILACIÓN.
No alteres ningún elemento clasificado como 🟡 PROBLEMA FUNCIONAL O DE CALIDAD.
Si falta un archivo referenciado, créalo con la implementación mínima necesaria para compilar.
Tipo B — Configuración / documentación
Extrae el contenido tal cual, sin modificaciones salvo errores evidentes de sintaxis
(ej: YAML mal indentado).
Tipo C — Excel (.xlsx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un archivo Excel funcional con:

Fila de encabezados en negrita con color de fondo distintivo
Columnas con ancho ajustado al contenido
Tipos de dato correctos por columna
Validaciones si la descripción lo indica
Hojas nombradas descriptivamente si hay más de una
Filas de ejemplo si no hay datos reales

Tipo D — Word (.docx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un documento Word funcional con:

Estilos de título (Título 1, Título 2) para jerarquía de secciones
Fuente legible (Calibri o equivalente), tamaño 11-12pt para cuerpo
Márgenes estándar
Tabla de contenido si tiene múltiples secciones
Tablas con encabezados en negrita si aplica

Tipo E — Otro
Genera el archivo con el contenido o estructura más apropiada según la descripción.
PASO 5 — Exportación en ZIP
Empaqueta todos los archivos en un único archivo ZIP descargable respetando exactamente
la estructura de rutas indicada por los marcadores.
El ZIP debe incluir:

Archivos de código con únicamente los errores de compilación corregidos
Archivos de configuración y documentación sin cambios
Archivos nuevos creados para resolver dependencias de compilación faltantes
Archivos Excel y Word generados desde descripción

IMPORTANTE: El ZIP debe estar listo para descargar al finalizar. No preguntes si el usuario
quiere generarlo. Simplemente genera el archivo y proporciona el enlace de descarga; No debes desplegar en el chat el resumen de lo que arreglaste al Zip, solo entregalo.

REGLAS IMPORTANTES

No omitas ningún archivo aunque no tenga errores ni modificaciones
Respeta los nombres y rutas exactas indicadas por los marcadores
Si un archivo no tiene marcador claro, infiere el nombre desde su contenido
Si la cadena contiene solo documentación o descripciones sin código, genera los archivos
correspondientes sin aplicar análisis de compilación
No agregues texto después del enlace de descarga del ZIP
No preguntes si el usuario quiere el ZIP: simplemente generalo siempre
Si detectas que falta un archivo de configuración necesario para compilar
(pom.xml, package.json, requirements.txt, build.gradle, etc.), créalo e inclúyelo
inferiendo su contenido desde los imports y frameworks detectados en el código
Nunca corrijas problemas 🟡 aunque parezcan obvios o fáciles de mejorar.
El participante que recibirá este proyecto los debe encontrar y resolver él mismo.


INPUT
Aquí está la cadena con los archivos:

// === ARCHIVO: containers/Dockerfile ===
FROM python:3.12-slim AS builder
WORKDIR /app
COPY. /app
RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.12-slim
WORKDIR /app
COPY --from=builder /app /app
COPY containers/healthcheck.sh /app/
RUN chmod +x /app/healthcheck.sh
ENTRYPOINT ["./healthcheck.sh"]

// === ARCHIVO: containers/docker-compose.yml ===
version: '3.8'
services:
  app:
    build:
      context:.
      dockerfile: containers/Dockerfile
    ports:
      - '5000:5000'

// === ARCHIVO: containers/.dockerignore ===
__pycache__
*.pyc
*.pyo
*.pyd

// === ARCHIVO: containers/healthcheck.sh ===
#!/bin/sh
set -e

# Health check logic
echo "Running health check..."
python -c 'import sys; sys.exit(0)'

echo "Health check passed."

// === ARCHIVO: scripts/automation_script.py ===
#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""Script de automatización de procesos administrativos"""
import subprocess

def main():
    # Automation logic
    print("Running automation script...")
    subprocess.run(["echo", "Automation process completed."])

if __name__ == "__main__":
    main()

// === ARCHIVO: monitoring/monitoring_setup.sh ===
#!/bin/sh
set -e

# Monitoring setup logic
echo "Configuring monitoring..."

# Example: Install and configure a monitoring tool
# apt-get install -y some-monitoring-tool

echo "Monitoring configured."

// === ARCHIVO: patches/patch_procedure.md ===
# Procedimiento para la aplicación de fixes y parches

1. Identificar los fixes y parches necesarios.
2. Descargar los fixes y parches desde una fuente confiable.
3. Aplicar los fixes y parches siguiendo las instrucciones proporcionadas.
4. Verificar que los fixes y parches se han aplicado correctamente.

// === ARCHIVO: security/security_hardening.sh ===
#!/bin/sh
set -e

# Security hardening logic
echo "Hardening security..."

# Example: Apply security configurations
# sysctl -w net.ipv4.ip_forward=0

echo "Security hardened."

// === ARCHIVO: docs/infrastructure_setup.md ===
# Configuración de la infraestructura

## Descripción
Este documento describe los pasos necesarios para configurar la infraestructura de la nube.

## Pasos
1. Configurar el ambiente de contenedores.
2. Automatizar procesos administrativos.
3. Configurar soluciones de monitoreo.
4. Aplicar fixes y parches.
5. Fortalecer la seguridad.

```
