class Author:
    def __init__(self, name):
        self.name = name
        self.refs = []
    def __repr__(self):
        return f'{self.name}: {self.refs}'


class Book:
    def __init__(self, name, year, edition)
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

def main():
    with open('author.sql', 'w') as authordone, open('book.sql', 'w') as bookdone:
        authordone.write('INSERT INTO Author (name) VALUES\n')
        authordone.write('INSERT INTO Book (name) VALUES\n')
        print('Deleted previous data.')
    with open('../raw/author.csv', 'r') as author, open('../raw/book.csv', 'r') as book, open('author.sql', 'a') as authordone, open('book.sql', 'a') as bookdone:
        authors = []
        books = []
        add = False
        skipFirst = True
        for i in author:
            if skipFirst:
                skipFirst = False
                continue
            add = True
            data = i.strip('\n').split('\t')
            if len(authors) == 0:
                authors.append(Author(data[1]))
                authors[0].refs.append(data[0])
                continue
            for j in range(len(authors)):
                if authors[j].name == data[1]:
                    authors[j].refs.append(data[0])
                    add = False
                    break
            if add:
                authors.append(Author(data[1]))
                authors[len(authors) - 1].refs.append(data[0])
        print(len(authors))
        count = 1
        for i in authors:
            if count == len(authors):
                authordone.write(f'\t({i.name});')
            else:
                authordone.write(f'\t({i.name}),\n')
            count += 1
        
        # Now, the same thing with book, to make the links correctly
        skipFirst = True
        for i in book:
            if skipFirst:
                skipFirst = False
                continue
            add = True
            data = i.strip('\n').split('\t')
            if len(books) == 0:
                books.append(Book(data[2], data[3], data[4]))
                books[0].refs.append(data[0])
                continue
            for j in range(len(authors)):
                if authors[j].name == data[1]:
                    authors[j].refs.append(data[0])
                    add = False
                    break
            if add:
                authors.append(Author(data[1]))
                authors[len(authors) - 1].refs.append(data[0])
        print(len(authors))
        count = 1
        for i in authors:
            if count == len(authors):
                authordone.write(f'\t({i.name});')
            else:
                authordone.write(f'\t({i.name}),\n')
            count += 1


if __name__ == '__main__':
    main()
