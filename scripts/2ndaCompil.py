#if detail has 4 fields, then go with author/year/title/editorial format; if has 5 fields, then go with author/year/title/edition/editorial format
#if a register has 8 fields, then act as normal; if has 9, then a link has been provided (next to the detail), even tho when in this step weren't necesary

def Main():
    count = 0
    with open('../raw/bigFix.csv', 'r') as fix, open('../raw/author.csv', 'a+') as author, open('../raw/authorBook.csv', 'a+') as authorbook, open('../raw/book.csv', 'a+') as book, open('../raw/career.csv', 'a+') as career, open('../raw/careerBook.csv', 'a+') as careerbook, open('../raw/link.csv', 'a+') as link:
        link.write('\t'.join(['id', 'idBook', 'link']) + '\n')
        actualId = 1139
        auxId = actualId
        linkId = 0
        skipFirst = True
        for i in fix:
            if skipFirst:
                skipFirst = False
                continue
            data = i.strip('\n').split('\t')
            detail = data[2].split('|')
            if sum(1 if j != '' else 0 for j in data) == 8:
                career.write('\t'.join([str(auxId), data[7], data[0], data[1]]) + '\n')
                if len(detail) == 4:
                    book.write('\t'.join([str(auxId), data[5], detail[2], detail[1], 'NULL', detail[3], data[3], data[4]]) + '\n')
                elif len(detail) == 5:
                    book.write('\t'.join([str(auxId), data[5], detail[2], detail[1], detail[3], detail[4], data[3], data[4]]) + '\n')
                else:
                    print('???')
                    print(detail)
                careerbook.write('\t'.join([str(auxId), str(auxId)]) + '\n')
                author.write('\t'.join([str(auxId), detail[0]]) + '\n')
                authorbook.write('\t'.join([str(auxId), str(auxId)]) + '\n')
            else:
                print(data)
                career.write('\t'.join([str(auxId), data[8], data[0], data[1]]) + '\n')
                if len(detail) == 4:
                    book.write('\t'.join([str(auxId), data[5], detail[2], detail[1], 'NULL', detail[3], data[4], data[5]]) + '\n')
                elif len(detail) == 5:
                    book.write('\t'.join([str(auxId), data[5], detail[2], detail[1], detail[3], detail[4], data[4], data[5]]) + '\n')
                else:
                    print('???')
                    print(detail)
                careerbook.write('\t'.join([str(auxId), str(auxId)]) + '\n')
                author.write('\t'.join([str(auxId), detail[0]]) + '\n')
                authorbook.write('\t'.join([str(auxId), str(auxId)]) + '\n')
                link.write('\t'.join([str(linkId), str(auxId), data[3]]) + '\n')
                linkId += 1
            auxId += 1
                

if __name__ == '__main__':
    Main()
