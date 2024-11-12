def main():
    val = 0
    done = ['admin', 'asistenteGeologia', 'basica', 'comercial', 'derecho']
    with open('justInCase.csv') as data:
        for i in data:
            split = i.split('\t');
            if val < 10 and not split[-1].strip('\n') in :
                print(split[-1].strip('\n'))
                val +=1;

if __name__ == '__main__':
    main()
