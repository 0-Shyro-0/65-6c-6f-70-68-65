let () =
  (* 1. Créer le fichier brap.txt *)
  let brap_content = 
    "brap Brap brAp brAp brAp brAp brAp brAp Brap Brap Brap Brap Brap Brap Brap Brap Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp brAp bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap brap Brap brAp brAp brAp brAp brAp brAp brAp bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp brAp bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap  Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp brAp bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap  Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp brAp bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Brap Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp brAp bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp brAp bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp brAp bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap bRap Spark\n" ^
    "brap Brap brAp brAp brAp brAp brAp brAp Brap Spark\n"
  in
  let oc = open_out "brap.txt" in
  output_string oc brap_content;
  close_out oc;

  (* 2. Créer le fichier wankel.py avec l'interpréteur Python *)
  let wankel_py_content = 
    "import sys\n" ^
    "\n" ^
    "class W:\n" ^
    "    def __init__(self):\n" ^
    "        self.m = [0] * 450000  # tableau de mémoire\n" ^
    "        self.p = 0  # pointeur\n" ^
    "\n" ^
    "    def x(self, c):\n" ^
    "        o = c\n" ^
    "        for i in o.split():\n" ^
    "            self.y(i)\n" ^
    "\n" ^
    "    def y(self, i):\n" ^
    "        if i == 'brap':\n" ^
    "            self.p = (self.p + 1) % len(self.m)\n" ^
    "            self.m[self.p] = self.m[self.p] if self.m[self.p] != 0 else 0\n" ^
    "        elif i == 'Brap':\n" ^
    "            self.m[self.p] += 1\n" ^
    "        elif i == 'bRap':\n" ^
    "            self.m[self.p] -= 1\n" ^
    "        elif i == 'brAp':\n" ^
    "            self.m[self.p] = self.m[self.p] * 2  # Multiplication par 2\n" ^
    "        elif i == 'braP':\n" ^
    "            if self.m[self.p] == 0:\n" ^
    "                print('ca marche pas, mais j\\'essaie quand même de sauter.')\n" ^
    "        elif i == 'spark':\n" ^
    "            print(self.m[self.p], end='')  # afficher la valeur en ASCII\n" ^
    "        elif i == 'Spark':\n" ^
    "            try:\n" ^
    "                print(chr(self.m[self.p]), end='')  # afficher le caractère correspondant\n" ^
    "            except ValueError:\n" ^
    "                print('💥 BOUM 💥')  # Gestion des erreurs\n" ^
    "        else:\n" ^
    "            pass\n" ^
    "\n" ^
    "    def d(self):\n" ^
    "        print(' '.join(map(str, self.m)))\n" ^
    "\n" ^
    "\n" ^
    "def M():\n" ^
    "    print(''.join(['-' for _ in range(80)]))\n" ^
    "    print('| Wankel Interpreter (v0.0.1-alpha-pre-release-ultra-stable-maybe)              |')\n" ^
    "    print('| Créé par EPIRATE. Pour \"La nuit de l\\'info 2024\"                               |')\n" ^
    "    print(''.join(['-' for _ in range(80)]))\n" ^
    "    print('Sortie : ')\n" ^
    "\n" ^
    "    if len(sys.argv) < 2 or len(sys.argv) > 2:\n" ^
    "        print('Utilisation : python wankel.py <fichier>')\n" ^
    "        return\n" ^
    "\n" ^
    "    f = sys.argv[1]\n" ^
    "    try:\n" ^
    "        with open(f, 'r') as fichier:\n" ^
    "            c = fichier.read()\n" ^
    "\n" ^
    "        I = W()\n" ^
    "        I.x(c)\n" ^
    "\n" ^
    "    except FileNotFoundError:\n" ^
    "        print(f'Erreur fatale : le fichier {f} n\\'existe pas.')\n" ^
    "    except Exception as e:\n" ^
    "        print(f'💔 Oops, une erreur s\\'est produite : {e}')\n" ^
    "\n" ^
    "if __name__ == '__main__':\n" ^
    "    M()\n"
  in
  let oc = open_out "wankel.py" in
  output_string oc wankel_py_content;
  close_out oc;

  (* 3. Lancer l'interpréteur Python avec brap.txt *)
  let _ = Sys.command "python wankel.py brap.txt" in
  ()
