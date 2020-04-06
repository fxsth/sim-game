#ifndef USER_H
#define USER_H
#include<string>
#include<QString>
#include<QColor>

class User
{
public:
    User(){
        name_ = "test";
        color_ = "red";
    }
    User(QString const& name, QColor color, int playerN):
    name_(name), color_(color), playerNumber(playerN){}

    QString getName();
    void setName(QString name);
    QColor getColor();
    void setColor(QColor color);
    int getPLayerNumber();

private:
    QString name_;
    QColor color_;
    int playerNumber;
};

#endif // USER_H
