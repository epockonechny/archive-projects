/****************************************************************************
** Meta object code from reading C++ file 'QXmppIncomingClient.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "server/QXmppIncomingClient.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QXmppIncomingClient.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QXmppIncomingClient_t {
    QByteArrayData data[9];
    char stringdata[119];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_QXmppIncomingClient_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_QXmppIncomingClient_t qt_meta_stringdata_QXmppIncomingClient = {
    {
QT_MOC_LITERAL(0, 0, 19),
QT_MOC_LITERAL(1, 20, 15),
QT_MOC_LITERAL(2, 36, 0),
QT_MOC_LITERAL(3, 37, 11),
QT_MOC_LITERAL(4, 49, 7),
QT_MOC_LITERAL(5, 57, 13),
QT_MOC_LITERAL(6, 71, 15),
QT_MOC_LITERAL(7, 87, 20),
QT_MOC_LITERAL(8, 108, 9)
    },
    "QXmppIncomingClient\0elementReceived\0"
    "\0QDomElement\0element\0onDigestReply\0"
    "onPasswordReply\0onSocketDisconnected\0"
    "onTimeout\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QXmppIncomingClient[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
       5,    0,   42,    2, 0x08,
       6,    0,   43,    2, 0x08,
       7,    0,   44,    2, 0x08,
       8,    0,   45,    2, 0x08,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void QXmppIncomingClient::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QXmppIncomingClient *_t = static_cast<QXmppIncomingClient *>(_o);
        switch (_id) {
        case 0: _t->elementReceived((*reinterpret_cast< const QDomElement(*)>(_a[1]))); break;
        case 1: _t->onDigestReply(); break;
        case 2: _t->onPasswordReply(); break;
        case 3: _t->onSocketDisconnected(); break;
        case 4: _t->onTimeout(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QXmppIncomingClient::*_t)(const QDomElement & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppIncomingClient::elementReceived)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject QXmppIncomingClient::staticMetaObject = {
    { &QXmppStream::staticMetaObject, qt_meta_stringdata_QXmppIncomingClient.data,
      qt_meta_data_QXmppIncomingClient,  qt_static_metacall, 0, 0}
};


const QMetaObject *QXmppIncomingClient::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QXmppIncomingClient::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QXmppIncomingClient.stringdata))
        return static_cast<void*>(const_cast< QXmppIncomingClient*>(this));
    return QXmppStream::qt_metacast(_clname);
}

int QXmppIncomingClient::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QXmppStream::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void QXmppIncomingClient::elementReceived(const QDomElement & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
