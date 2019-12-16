import sqlite3
import csv
import sys
import os

data=[]
file = "rendu/LOUISLEDENMAT_REYNES_BANQUE_V3.sql"

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
        print "hello"
        #initialisation sqlite3
        bd = sqlite3.connect(':memory:')
        bd.execute('pragma foreign_keys=ON')
        rows = bd.execute('pragma foreign_keys')
        for r in rows:
            print (r)
        cursor = bd.cursor()

        #execute
        data=SPLIT(OPEN_FILE_XML(file),";")
        for i in data:
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

main()
