# PAE-Report_template
_(Español)_
Plantilla en [LaTeX](https://www.latex-project.org/) para la asignatura de
Prácticas Externas de la [Universidad Carlos III de Madrid](www.uc3m.es).
Alguien tenía que hacerlo.

Esta plantilla está inspirada visualmente en la usada para la asignatura
*Ingeniería de Software*. También se inspira en la plantilla para TFG's de
Ldcas: [Ldcas-thesisTemplate](https://github.com/ldcas-uc3m/thesis-template).

## Requisitos
Se recomienda instalar los siguientes paquetes:
- Linux: `texlive-full`. Suite completa de Latex. Aunque no todas son usadas por la plantilla facilitará en gran medida la compilación y será útil para futuros proyectos en LaTeX.
- Windows: instala [MiKTeX](https://miktex.org/download#win), e inclúyelo en el `PATH`. Instala [Strawberry Perl](https://strawberryperl.com/) y `latexmk` si no está installado a través de de la consola de MikTex.

## Uso
### Selección de idioma
Se da soporte a español e inglés.

```TeX
\documentclass[es]{uc3mPAE_template} % spanish
\documentclass{uc3mPAE_template} % spanish too

\documentclass[en]{uc3mPAE_template} % english
```
### Generación automática de la hoja de datos
Define los siguientes atributos en el archivo `main.tex`. Permiten generar automáticamente la ficha de Datos.
- Datos del estudiante:
    - `author`: tu nombre.
    - `title`: título del trabajo. Puedes dejarlo como está si estás escribiéndolo en español.
    - `dateOfBirth`: fecha de nacimiento del estudiante. 
    - `NIA`: Número de identificación de alumno.
    - `degree`: grado que estás estudiando. 
    - `courseyear`: por ejemplo 2024-25. 
    - `couse`: primer curso, segundo curso, tercer curso...
- Información de las prácticas.
    - `startDate`: Fecha de inicio de las prácticas (Aparece en el "Anexo I")
    - `endDate` : Fecha de finalización de las prácticas (Aparece en el "Anexo I")
    - `totalHours`: dependiendo del número de créditos. Si son 6 ECTS, deberían ser 150 (También aparencen en el "Anexo I").
    - `weeklyHours`: Aparece en el "Anexo I"
    - `nECTS`: número de créditos ECTS.
- Información de la empresa:
    - Obligatorios: estos atributos son obligatorios.
        - `company`: nombre de la empresa.
        - `logoIMG`: archivo del logo de la empresa.
        - `companyAddress`: dirección de la empresa.
    - Opcionales: los siguientes atributos son opcionales. Comenta las líneas en `main.tex` si no quieres incluirlos.
        - `companyCEO`: CEO de la empresa.
        - `companyFounder`: Fundador de la empresa.
        - `companyFundationDate`: año de fundación de la empresa.
- Tutores: información de los tutores. La puedes encontrar en el "Anexo I" 
    - `advisorCompany`: nombre del tutor de empresa.
    - `advContactMail`: e-mail de contacto del tutor de empresa.
    - `advContactPhone`: teléfono de contacto del tutor de empresa.
    - `advisorCollege`: nombre del tutor académico.

### Generación del pdf

Modifica los archivos `.tex` dentro del directorio `parts`. `Datos.tex` no
debería modificarse a no ser que quieras incluir algo en concreto. Este arhivo
se genera automáticamente en base a los atributos que definas en `main.tex`.

Compila el documento mediante el comando `make`. Si has decidido modificar el nombre del archivo `main.tex` tan sólo es necesario modificar la variable `obj` en el archivo `makefile`.
- `make`: compila el documento y genera el pdf dentro del directorio `build`.
- `make clear`: elimina el directorio `build`.

## Contribute

Eres libre de usar, modificar y adaptar esta plantilla a tus necesidades.
Siéntete libre de abrir una pull request para mejorar esta plantilla aún más.

_____

_(english)_

LaTeX template for Professional Interships (Prácticas Externas) subject at
Universidad Carlos III de Madrid. Someone had to do it.

This template is visualy inspired by the template used for *Software
Engineering* subjet. It is also based on
[Ldcas-thesisTemplate](https://github.com/ldcas-uc3m/thesis-template).

## Requirements
It is strongly recommended to install the following:
- Linux: `texlive-full` package
- For windows, install [MiKTeX](https://miktex.org/download#win), make sure it
  is include in `PATH`, and install [Strawberry
  Perl](https://strawberryperl.com/). If not currently installed, install
  `latexmk` through MikTex console.

## Usage
### Selecting language
English and Spanish support is given.

```TeX
\documentclass[es]{uc3mPAE_template} % spanish
\documentclass{uc3mPAE_template} % spanish too

\documentclass[en]{uc3mPAE_template} % english
```

### Automatic data sheet

Define the following attributes in `main.tex` file:
- Student data:
    - `author`: your name.
    - `title`: if you want a different title on the report. You can leave it unchanged if writing in spanish.
    - `dateOfBirth`: student's birth date. 
    - `NIA`: Your "número de identificación de alumno".
    - `degree`: The degree you are studying.
    - `courseyear`: for example 2024-2025.
    - `couse`: first course, forth course...
- Intership information:
    - `startDate`: day you started working (can be found in "Anexo I").
    - `endDate` : date when you finished your contract (can be found in "Anexo I").
    - `totalHours`: depends on the number of credits. If 6, then it should be 150 (you can find this in "Anexo I").
    - `weeklyHours`: should appear in Anexo I.
    - `nECTS`: number of credits.
- Company data:
    - Required: the following data it is required and must be completed.
        - `company`: name of the company you are working at.
        - `logoIMG`: name of the logo image of the company.
        - `companyAddress`: Address of the company.
    - Optional: the following data can be commented in tex file.
        - `companyCEO`
        - `companyFounder`
        - `companyFundationDate`
- Advisors: this information can be found on the "Anexo I" you signed before starting the intership.
    - `advisorCompany`: company advisor.
    - `advContactMail`: company advisor e-mail.
    - `advContactPhone`: company advisor phone number.
    - `advisorCollege`: college advisor.

### Generating pdf
Modify `.tex` files inside `parts` folders. `Datos.tex` should not be modified as it generates based on the atributes defined in main file.

Just compile the project using `make`. Modify the variable `obj` in `makefile` if you changed `main.tex` file name.
- `make`: compile the project and generate pdf in `build` folder.
- `make clear`: delete `build` folder.

## Contribute

You are free to modify, upgrade or adapt this template to your needs. Feel free
to open a pull request to make this template even better.
