import sys

class W:
    def __init__(self):
        self.m = [0] * 450000  # tableau de m??moire
        self.p = 0  # pointeur

    def x(self, c):
        o = c
        for i in o.split():
            self.y(i)

    def y(self, i):
        if i == 'brap':
            self.p = (self.p + 1) % len(self.m)
            self.m[self.p] = self.m[self.p] if self.m[self.p] != 0 else 0
        elif i == 'Brap':
            self.m[self.p] += 1
        elif i == 'bRap':
            self.m[self.p] -= 1
        elif i == 'brAp':
            self.m[self.p] = self.m[self.p] * 2  # Multiplication par 2
        elif i == 'spark':
            print(self.m[self.p], end='')  # afficher la valeur en ASCII
        elif i == 'Spark':
            try:
                print(chr(self.m[self.p]), end='')  # afficher le caract??re correspondant
            except ValueError:
                print('???? BOUM ????')  # Gestion des erreurs
        else:
            pass

    def d(self):
        print(' '.join(map(str, self.m)))


def M():
    print(''.join(['-' for _ in range(80)]))
    print('| Wankel Interpreter (v0.0.1-alpha-pre-release-ultra-stable-maybe)              |')
    print('| Cr???? par EPIRATE. Pour "La nuit de l info 2024                               |')
    print(''.join(['-' for _ in range(80)]))
    print('Sortie : ')

    if len(sys.argv) < 2 or len(sys.argv) > 2:
        print('Utilisation : python wankel.py <fichier>')
        return

    f = sys.argv[1]
    try:
        with open(f, 'r') as fichier:
            c = fichier.read()

        I = W()
        I.x(c)

    except FileNotFoundError:
        print(f'Erreur fatale : le fichier {f} n existe pas.')
    except Exception as e:
        print(f'???? Oops, une erreur s est produite : {e}')

if __name__ == '__main__':
    M()
