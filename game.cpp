#include "game.h"
#include <QDebug>

Game::Game(QObject *parent) : QObject(parent)
{
    qDebug() << "Game Konstruktor wurde aufgerufen";
    user1 = User("Spieler 1", QColor(0, 0, 255, 127), 1);
    user2 = User("Spieler 2", QColor(255, 0, 0, 127), 1);
    whoseTurn = user1;
    initiateMatrix();
}

QColor Game::currentColor()
{
    return whoseTurn.getColor();
}

void Game::setCurrentColor(QColor color)
{
    whoseTurn.setColor(color);
}

void Game::nextPlayer()
{
   qDebug() << "nextPlayer wurde aufgerufen, aktueller Spieler ist:" << whoseTurn.getName() << "in der Runde" << round;
   if(round%2 == 1)
   {
       qDebug() << "nächster Spieler wird Spieler 2";
       whoseTurn = user2;
       cColor = user2.getColor();
       cPlayerName = user2.getName();
       qDebug() << "Ist Spieler 2 dran?"<< whoseTurn.getName();
   }
   else
   {
       qDebug() << "nächster Spieler wird Spieler 1";
       whoseTurn = user1;
       cColor = user1.getColor();
       cPlayerName = user1.getName();
       qDebug() << "Ist Spieler 1 dran?"<< whoseTurn.getName();
   }
   round++;
}

bool Game::selectEdge(int i, int j)
{
    if(i==j)
    {
        // Man kann Knoten nur mit einem anderen Knoten verbinden
        return false;
    }
    if(matrix[i][j]>0)
    {
        // Wenn die Kante bereits gewählt wurde
        return false;
    }
    qDebug() << "Matrix[" << i << "][" << j << "] = " << 2-round%2;
    matrix[i][j]=2-round%2;
    matrix[j][i]=matrix[i][j];
    return true;
}

QString Game::currentPlayerName()
{
    qDebug() << "CurrentPlayerName: "<< whoseTurn.getName();
    return whoseTurn.getName();
}

void Game::setCurrentPlayerName(QString name)
{
    whoseTurn.setName(name);
}

void Game::initiateMatrix()
{
    for(int i=0; i<6; i++)
    {
        for(int j=0; j<6; j++)
        {
            if(i==j)
            {
                matrix[i][j]=-1;
            } else{
                matrix[i][j]=0;
            }
        }
    }
}

bool Game::checkWin()
{
    int number = 2-round%2;
    qDebug() << "Hat Spieler" << number << " verloren?";
    // Betrachtet wird die obere Stufenmatrix
    // ein Dreieck liegt vor, wenn in der oberen Stufenmatrix ein Dreieck vorkommt, d.h m[x][y]=m[x+i][y]=m[x+i][y+i] mit i>0
    for(int row=0; row<4; row++) // Zeile 0,1,2,3
    {
        for(int c=row+1; c<6;c++)   // geht alle Spalten in der Stufenmatrix durch z.b. in Zeile 0 -> Spalte 1,2,3,4,5, in Zeile 3 -> Spalte 4,5
        {
            if(matrix[c][row]==number)
            {
                qDebug() << "erste Zahl gefunden in x,y:" << c << row;
                for(int c2=c+1; c2<6; c2++) // gesucht wird nach einer weiteren Zahl des Spielers in der Zeile, rechts von c
                {
                    if(matrix[c2][row]==number) // gefunden, wenn im gleichen Abstand nach unten in der Matrix auch die Nummer gefunden wird -> Dreieck
                    {
                        qDebug() << "weitere Zahl gefunden in x,y:" << c2 << row;
                        if(matrix[c2][c]==number)
                        {
                            qDebug() << "Dritte Zahl in x,y:" << c2 << c;
                            return true;
                        }
                    }
                }
            }
        }
    }
    return false;
}

void Game::reset()
{
    user1 = User("Spieler 1", QColor(0, 0, 255, 127), 1);
    user2 = User("Spieler 2", QColor(255, 0, 0, 127), 1);
    whoseTurn = user1;
    initiateMatrix();
    round=1;
}
