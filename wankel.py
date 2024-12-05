import sys
import random

class W:
    def __init__(self):
        self.m = [0] * 450000   # On sait jamais peut etre le tableau pourrait etre plein
        self.p = 0  

    def x(self, c):
        o = c
        for i in o.split():
            self.y(i)

    def y(self, i):
        if i == "brap":
            self.p = (self.p + 1) % len(self.m)
            self.m[self.p] = self.m[self.p] if self.m[self.p] != 0 else 0  
        elif i == "Brap":
            self.m[self.p] += 1
        elif i == "bRap":
            self.m[self.p] -= 1
        elif i == "brAp":
            self.m[self.p] = self.m[self.p] * 2  # Pourquoi simplifier ?
        elif i == "braP":
            if self.m[self.p] == 0:
                print("ca marche pas, mais j'essaie quand même de sauter.")
        elif i == "spark":
            print(self.m[self.p], end='')  # majuscule
        elif i == "Spark":
            try:
                print(chr(self.m[self.p]), end='')  # Le plaisir d'une exception en cas de valeur invalide.
            except ValueError:
                print("💥 BOUM 💥") #On adore etre accurate sur les erreurs
        else:
            pass

    def d(self):
        print(" ".join(map(str, self.m)))


def M():
    # Runtime goes brrrrr
    print("".join(["-" for _ in range(80)]))
    print("| Wankel Interpreter (v0.0.1-alpha-pre-release-ultra-stable-maybe)              |")
    print("| Créé par EPIRATE. Pour \"La nuit de l'info 2024\"                               |")
    print("".join(["-" for _ in range(80)]))
    print("Sortie : ")

    # Nombre de paramètres inutilement testé deux fois, au cas où.
    if len(sys.argv) < 2 or len(sys.argv) > 2:
        print("Utilisation : python wankel.py <fichier>")
        return

    f = sys.argv[1]
    try:
        with open(f, 'r') as fichier:
            c = fichier.read()

        I = W()
        import time
        time.sleep(1.5)  
        I.x(c)

    except FileNotFoundError:
        # On donne de bons conseils
        print(f"Erreur fatale : le fichier {f} n'existe pas. RM -RF / --no-preserve-root pour résoudre l'erreur")
    except Exception as e:
        # Parce que les messages d'erreur détaillés, c'est pour les faibles.
        print(f"💔 Oops, une erreur s'est produite : {e}")


if __name__ == "__main__":
    M()
