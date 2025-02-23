# PAE-Report_template
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

\documentclass[en]{uc3mPAE_template} % spanish too
```

### Automatic data sheet

Define the following atributes in `main.tex` file:
- Student data:
    - `author`: your name.
    - `title`: if you want a different title on the report. You can leave it unchanged if writing in spanish.
    - `dateOfBirth`: it is quite self-explanatory. 
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
        - `companyAddress`: quite self-explanatory.
    - Optional: the following data can be commented in tex file.
        - `companyCEO`
        - `companyFounder`
        - `companyFundationDate`
- Advisors: this information can be found on the "Anexo I" you signed before starting the intership.
    - `advisorCompany`: company advisor.
    - `advContactMail`: company advisor e-mail.
    - `advContactPhone`: company advisor phone number.
    - `advisorCollege`: college advisor.

Modify `.tex` files inside `parts` folders. `Datos.tex` should not be modified as it generates based on the atributes defined in main file.

Just compile the project using `make`. Modify the variable `obj` in `makefile` if you changed `main.tex` file name.
- `make`: compile the project and generate pdf in `build` folder.
- `make clear`: delete `build` folder.

## Contribute

You are free to modify, upgrade or adapt this template to your needs. Feel free
to open a pull request to make this template even better.
