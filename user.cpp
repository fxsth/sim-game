#include "user.h"

QString User::getName()
{
    return name_;
}
QColor User::getColor()
{
    return color_;
}
void User::setColor(QColor color)
{
    color_ = color;
}

void User::setName(QString name)
{
    name_=name;
}

int User::getPLayerNumber()
{
    return playerNumber;
}
