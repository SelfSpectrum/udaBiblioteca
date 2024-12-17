class Author:
    def __init__(self, name):
        self.name = name
        self.refs = []
    def __repr__(self):
        return f'{self.name}: {self.refs}'


class Book:
    def __init__(self, name, year, edition):
        self.name = name
        self.year = year
        self.edition = edition
        self.refs = []
    def __repr__(self):
        return f'{self.name}: {self.refs}'


class NroBib:
    def __init__(self, nroBib, copies):
        self.nroBib = nroBib
        self.copies = copies
        self.refs = []
    def __repr__(self):
        return f'{self.nroBib}: {self.refs}'


class Editorial:
    def __init__(self, name):
        self.name = name
        self.refs = []
    def __repr__(self):
        return f'{self.nroBib}: {self.refs}'

def main():
    with open('author.sql', 'w') as authordone, open('book.sql', 'w') as bookdone, open('nroBib.sql', 'w') as nrobibdone, open('editorial.sql', 'w') as editorialdone:
        authordone.write('INSERT INTO Author (name) VALUES\n')
        bookdone.write('INSERT INTO Book (name, year, edition) VALUES\n')
        nrobibdone.write('INSERT INTO NroBib (nroBib, copies) VALUES\n')
        editorialdone.write('INSERT INTO Editorial (name) VALUES\n')
        print('Deleted previous data.')
    with open('../raw/author.csv', 'r') as author, open('../raw/book.csv', 'r') as book, open('author.sql', 'a') as authordone, open('book.sql', 'a') as bookdone, open('nroBib.sql', 'a') as nrobibdone, open('editorial.sql', 'a') as editorialdone:
        authors = []
        books = []
        nroBibs = []
        editorials = []
        add = False

        # Let's start by getting all the data from author and fucking clean it as much as possible, bcz fuck, is fucking messy
        skipFirst = True
        for i in author:
            if skipFirst:
                skipFirst = False
                continue
            add = True
            data = i.strip('\n').split('\t')
            for j in range(len(authors)):
                if authors[j].name == data[1]:
                    authors[j].refs.append(data[0])
                    add = False
                    break
            if add:
                authors.append(Author(data[1]))
                authors[len(authors) - 1].refs.append(data[0])
        
        # Now, the same thing with book, to make the links correctly (or no, fuck that, links will wait)
        skipFirst = True
        for i in book:
            if skipFirst:
                skipFirst = False
                continue
            add = True
            data = i.strip('\n').split('\t')
            for j in range(len(books)):
                if books[j].name == data[2]:
                    books[j].refs.append(data[0])
                    add = False
                    break
            if add:
                books.append(Book(data[2], data[3], data[4]))
                books[len(books) - 1].refs.append(data[0])

        # Funny, now same thing with... NroBib and... Editorial... agh...
        book.seek(0)
        skipFirst = True
        for i in book:
            if skipFirst:
                skipFirst = False
                continue
            add = True
            data = i.strip('\n').split('\t')
            for j in range(len(nroBibs)):
                if nroBibs[j].nroBib == data[1]:
                    nroBibs[j].refs.append(data[0])
                    add = False
                    break
            if add:
                if len(data) == 8:
                    nroBibs.append(NroBib(data[1], data[7]))
                    nroBibs[len(nroBibs) - 1].refs.append(data[0])
                elif len(data) == 7:
                    nroBibs.append(NroBib(data[1], data[6]))
                    nroBibs[len(nroBibs) - 1].refs.append(data[0])

        # I hate this
        book.seek(0)
        skipFirst = True
        for i in book:
            if skipFirst:
                skipFirst = False
                continue
            add = True
            data = i.strip('\n').split('\t')
            for j in range(len(editorials)):
                if len(data) == 8:
                    if editorials[j].name == data[5]:
                        editorials[j].refs.append(data[0])
                        add = False
                        break
            if add:
                if len(data) == 8:
                    editorials.append(Editorial(data[5]))
                    editorials[len(editorials) - 1].refs.append(data[0])

        print(len(authors))
        count = 1
        for i in authors:
            if count == len(authors):
                authordone.write(f'\t(\'{i.name}\');')
            else:
                authordone.write(f'\t(\'{i.name}\'),\n')
            count += 1
        print(len(books))
        count = 1
        for i in books:
            if count == len(books):
                bookdone.write(f'\t(\'{i.name}\', {i.year}, {i.edition});')
            else:
                bookdone.write(f'\t(\'{i.name}\', {i.year}, {i.edition}),\n')
            count += 1
        print(len(nroBibs))
        count = 1
        for i in nroBibs:
            if count == len(nroBibs):
                nrobibdone.write(f'\t({i.nroBib}, {i.copies});')
            else:
                nrobibdone.write(f'\t({i.nroBib}, {i.copies}),\n')
            count += 1
        print(len(editorials))
        count = 1
        for i in editorials:
            if count == len(editorials):
                editorialdone.write(f'\t(\'{i.name}\');')
            else:
                editorialdone.write(f'\t(\'{i.name}\'),\n')
            count += 1


if __name__ == '__main__':
    main()
