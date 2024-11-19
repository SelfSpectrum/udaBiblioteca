from sys import argv
from os import system

def AppendLibro(file : str) -> None:
    keys = 'asignaturasemestredetalledebibliografíatipodebibliografiacantidaddecopiasdisponiblesenbibliotecanrodebib#disponibilidadprestamos0bibbiblioteca'
    flag : bool = True;
    if 'medicina' in file:
        with open(file, 'r') as load, open('final/book.csv', 'a+') as book, open('final/author.csv', 'a+') as author, open('final/authorBook.csv', 'a+') as authorBook, open('final/career.csv', 'a+') as career, open('final/careerBook.csv', 'a+') as careerBook:
            idBook = 0
            idAuthor = 0
            idCareer = 0
            for i in load:
                data : list[str] = i.split('\t')
                count = sum(1 if j == '' or ''.join(j.split(' ')).lower() in keys else 0 for j in data)
                if (count > 6): continue
                #Id, N. Library, Name, Year, Edition, Obligatory, Copies
                book.write('\t'.join([str(idBook), '0', data[3], data[5], '0', '1' if data[2] == 'OBLIGATORIA:' else '0', '0' if data[7] == '' else data[7]]) + '\n')
                #Id, Name, Subject, Semester
                career.write('\t'.join([str(idCareer), 'medicina', data[0], data[1]]) + '\n')
                #Id Career, Id Book
                careerBook.write('\t'.join([str(idCareer), str(idBook)]) + '\n');
                idCareer += 1
                #Id, Name
                author.write('\t'.join([str(idAuthor), data[4]]) +'\n')
                #Id Author, Id Book
                authorBook.write('\t'.join([str(idAuthor), str(idBook)]) + '\n')
                idAuthor += 1
                idBook += 1
    else:
        with open(file, 'r') as load, open('./libroOld.csv', 'a') as libro:
            for i in load:
                career : str = file.split('-')[0].split('/')[2]
                cstr : str = career.strip().lower()
                data : list[str] = i.strip('\n').split('\t')
                count = sum(1 if j == '' or ''.join(j.split(' ')).lower() in keys else 0 for j in data)
                if (count > 3): continue

                filtrado : str = ''
                if cstr in 'edfisicageologiakinesiologiaparvulariatraductologia':
                    filtrado = '\t'.join(k for j, k in enumerate(data) if j != 4)
                elif cstr == 'minas':
                    filtrado = '\t'.join([data[0], data[1] if data[1] != '' else '0', data[2] + '|' + data[7], data[3], data[4], data[5], 'a'])
                elif cstr in 'basicaingles':
                    filtrado = '\t'.join([data[0], data[1], data[2], data[3], data[5], data[6], '1'])
                elif cstr == 'psicologia':
                    filtrado = '\t'.join([data[0], data[1], data[2], data[4], data[5], data[6], '1'])
                elif cstr in 'vtecnicoindustrialvtecnicoadmin':
                    filtrado = '\t'.join([data[0], '0', data[2], data[3], data[4], data[5], '1'])
                elif cstr == 'vtecnicomecanica':
                    print(data)
                    filtrado = '\t'.join([data[0], data[1], data[2], data[3], str(int(data[5]) + int(data[6])), data[4], '1'])
                else: filtrado = i

                res : str = '\t'.join(['0' if j == '' else j for j in filtrado.split('\t')]) + '\t' + career + '\n'

                if flag:
                    print(cstr)
                    print(sum([1 for j in res.split('\t')]))
                    print(res)
                    flag = False
                libro.write(res)
def CleanFile(file : str) -> None:
    keys = 'asignaturasemestredetalledebibliografíatipodebibliografiacantidaddecopiasdisponiblesenbibliotecanrodebib#disponibilidadprestamos0bibbiblioteca'
    newFile = file.replace('Old.csv', 'Fixed.csv')
    print(newFile)
    with open(newFile, 'w') as fix:
        fix.write('asignatura\tsemestre\tdetalle\ttipoBibliografia\tcopias\tid\tdisponibilidad\tcarrera\n')

    with open(file, 'r') as libro, open(newFile, 'a') as fix:
        for register in libro:
            count = sum(1 if i == '' or ''.join(i.split(' ')).lower() in keys else 0 for i in register.split('\t'))
            if (count > 4): continue
            else: fix.write(register)
    system(f'rm {file}')

def Main():
    argv.pop(0)
    with open('libroOld.csv', 'w') as libro, open('final/author.csv', 'w') as author, open('final/book.csv', 'w') as book, open('final/career.csv', 'w') as career, open('final/authorBook.csv', 'w') as authorBook, open('final/careerBook.csv', 'w') as careerBook, open('final/theme.csv', 'w') as theme, open('final/themeBook.csv', 'w') as themeBook:
        libro.write('asignatura\tsemestre\tdetalle\ttipoBibliografia\tcopias\tid\tdisponibilidad\tcarrera\n')
        author.write('id\tname\n')
        book.write('id\tinternalId\tname\tyear\tedition\tobligatory\tcopies\n')
        career.write('id\tname\tsubject\tsemester\n')
        authorBook.write('idAuthor\tidBook\n')
        careerBook.write('idCareer\tidBook\n')
        theme.write('id\ttag\n')
        themeBook.write('idTheme\tidBook\n')
    for i in argv:
        if 'libros' in i.lower() or 'bibliografía' in i.lower():
            print(i)
            AppendLibro(i)
    CleanFile('libroOld.csv')

if __name__ == '__main__':
    Main()
