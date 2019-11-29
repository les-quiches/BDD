import sqlite3
import csv
import sys
import os

data=[]
data_file_agences_client = 'data.txt'
data_file_compte = 'Comptes.csv'
data_file_operation = 'Operations.csv'
table=[]
table_file = "table.txt"
commande=[]
commades_file = "commande.txt"


def OPEN_FILE_XML(filename):
    #Lit le fichier selectionner "filename" et le renvois
    myFile=open(filename,"r")
    txt=myFile.read()
    myFile.close()
    return(txt)

def SPLIT(doc,spliter):
    #permet de coupee un txt pour le transformer en liste
    #doc = srt a split
    #spliter type str est le mots/ simbole / phrase ou le txt doit etre coupe
    doc_split=doc.split(spliter)
    return(doc_split)

def clean_sql(i):
    i = i.replace('\n','')
    i = i.replace('\r','')
    i = i.replace('  ','')
    return i



def main():
    try:
        #initialisation sqlite3
        bd = sqlite3.connect(':memory:')
        bd.execute('pragma foreign_keys=ON')
        rows = bd.execute('pragma foreign_keys')
        for r in rows:
            print (r)
        cursor = bd.cursor()

        #execute table
        table=SPLIT(OPEN_FILE_XML(table_file),";")
        for i in table:
            i = clean_sql(i)
            if i!='':
                i = i+";"
                cursor.execute(i)
                bd.commit()
        #execute data (CLIENTS AGENCES)
        data=SPLIT(OPEN_FILE_XML(data_file_agences_client),";")
        for i in data:
            i=clean_sql(i)
            if i!='':
                i = i+";"
                cursor.execute(i)
                bd.commit()

            #execute table
        commande=SPLIT(OPEN_FILE_XML(commades_file),";")
        for i in commande:
            i = clean_sql(i)
            if i!='':
                i = i+";"
                print "\n","Commande :",i
                for row in cursor.execute(i):
                    print row
                bd.commit()


    except:
        print("error")
        exit()
#--------------------------------------


main()