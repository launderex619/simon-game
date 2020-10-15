#ifndef USERMODEL_H
#define USERMODEL_H

#include <QObject>

class UserModel : public QObject {
    Q_OBJECT
private:
    QString name;
public:
    UserModel();
public slots:
    void setName(QString);
};

#endif // USERMODEL_H
