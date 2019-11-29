import csv
import sys
import os

fichier = []
#fichier.append("Agences.csv")
#fichier.append("Clients.csv")
fichier.append("Tableur/Comptes.csv")
fichier.append("Tableur/Operations.csv")

file="data_auto.sql"

def main():
    data_auto=""
    for filename in fichier:
        data = []
        with open(filename) as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=';')
            for row in csv_reader:
                data.append(row)
        namedata = data[0][0]
        commande = "INSERT INTO "+namedata+"("
        i=0
        for var in data[1]:
            if commande!="INSERT INTO "+namedata+"(":
                commande+= ","
            commande +=var
        commande += ") VALUES "

        print commande
        for var in data[2:]:
            a="("
            for var2 in var:
                if a!="(":
                    a+= ","
                try:
                    float(var2)
                    a += var2
                except:
                    a += "'"+var2+"'"
            data_auto+= commande +a +"); \n"
    print data_auto
    myFile=open(file,"w")
    myFile.write(data_auto)
    myFile.close()

main()
