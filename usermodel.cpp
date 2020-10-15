#include "usermodel.h"

#include <QDebug>

UserModel::UserModel() {

}

void UserModel::setName(QString name) {
    this->name = name;
    qDebug() << this->name;
}
