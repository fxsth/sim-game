#ifndef GAME_H
#define GAME_H

#include <QObject>
#include <QColor>
#include <array>
#include "user.h"

using connectPoints = std::pair<int, int>;

class Game : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QColor currentColor READ currentColor WRITE setCurrentColor NOTIFY currentColorChanged)
    Q_PROPERTY(QString currentPlayer READ currentPlayerName WRITE setCurrentPlayerName NOTIFY playerNameChanged)

public:
    explicit Game(QObject *parent = nullptr);
    QColor currentColor();
    void setCurrentColor(QColor color);
    QString currentPlayerName();
    void setCurrentPlayerName(QString name);

    User user1;
    User user2;
    User whoseTurn = user1;

signals:
    void currentColorChanged();
    void playerNameChanged();

public slots:
    bool selectEdge(int i, int j);
    void nextPlayer();
    bool checkWin();
    void reset();

private:
    int round=1;
    QColor cColor;
    QString cPlayerName;
    int matrix[6][6];
    void initiateMatrix();
};

#endif // GAME_H
