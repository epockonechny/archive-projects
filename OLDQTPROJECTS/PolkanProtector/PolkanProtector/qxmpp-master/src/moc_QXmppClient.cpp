/****************************************************************************
** Meta object code from reading C++ file 'QXmppClient.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "client/QXmppClient.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QXmppClient.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QXmppClient_t {
    QByteArrayData data[49];
    char stringdata[611];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_QXmppClient_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_QXmppClient_t qt_meta_stringdata_QXmppClient = {
    {
QT_MOC_LITERAL(0, 0, 11),
QT_MOC_LITERAL(1, 12, 9),
QT_MOC_LITERAL(2, 22, 0),
QT_MOC_LITERAL(3, 23, 12),
QT_MOC_LITERAL(4, 36, 5),
QT_MOC_LITERAL(5, 42, 18),
QT_MOC_LITERAL(6, 61, 13),
QT_MOC_LITERAL(7, 75, 12),
QT_MOC_LITERAL(8, 88, 6),
QT_MOC_LITERAL(9, 95, 15),
QT_MOC_LITERAL(10, 111, 12),
QT_MOC_LITERAL(11, 124, 7),
QT_MOC_LITERAL(12, 132, 16),
QT_MOC_LITERAL(13, 149, 13),
QT_MOC_LITERAL(14, 163, 8),
QT_MOC_LITERAL(15, 172, 10),
QT_MOC_LITERAL(16, 183, 7),
QT_MOC_LITERAL(17, 191, 2),
QT_MOC_LITERAL(18, 194, 12),
QT_MOC_LITERAL(19, 207, 18),
QT_MOC_LITERAL(20, 226, 5),
QT_MOC_LITERAL(21, 232, 15),
QT_MOC_LITERAL(22, 248, 3),
QT_MOC_LITERAL(23, 252, 8),
QT_MOC_LITERAL(24, 261, 20),
QT_MOC_LITERAL(25, 282, 10),
QT_MOC_LITERAL(26, 293, 11),
QT_MOC_LITERAL(27, 305, 11),
QT_MOC_LITERAL(28, 317, 7),
QT_MOC_LITERAL(29, 325, 18),
QT_MOC_LITERAL(30, 344, 11),
QT_MOC_LITERAL(31, 356, 7),
QT_MOC_LITERAL(32, 364, 5),
QT_MOC_LITERAL(33, 370, 7),
QT_MOC_LITERAL(34, 378, 12),
QT_MOC_LITERAL(35, 391, 21),
QT_MOC_LITERAL(36, 413, 28),
QT_MOC_LITERAL(37, 442, 18),
QT_MOC_LITERAL(38, 461, 21),
QT_MOC_LITERAL(39, 483, 14),
QT_MOC_LITERAL(40, 498, 5),
QT_MOC_LITERAL(41, 504, 5),
QT_MOC_LITERAL(42, 510, 7),
QT_MOC_LITERAL(43, 518, 11),
QT_MOC_LITERAL(44, 530, 14),
QT_MOC_LITERAL(45, 545, 15),
QT_MOC_LITERAL(46, 561, 17),
QT_MOC_LITERAL(47, 579, 15),
QT_MOC_LITERAL(48, 595, 14)
    },
    "QXmppClient\0connected\0\0disconnected\0"
    "error\0QXmppClient::Error\0loggerChanged\0"
    "QXmppLogger*\0logger\0messageReceived\0"
    "QXmppMessage\0message\0presenceReceived\0"
    "QXmppPresence\0presence\0iqReceived\0"
    "QXmppIq\0iq\0stateChanged\0QXmppClient::State\0"
    "state\0connectToServer\0jid\0password\0"
    "disconnectFromServer\0sendPacket\0"
    "QXmppStanza\0sendMessage\0bareJid\0"
    "_q_elementReceived\0QDomElement\0element\0"
    "bool&\0handled\0_q_reconnect\0"
    "_q_socketStateChanged\0"
    "QAbstractSocket::SocketState\0"
    "_q_streamConnected\0_q_streamDisconnected\0"
    "_q_streamError\0State\0Error\0NoError\0"
    "SocketError\0KeepAliveError\0XmppStreamError\0"
    "DisconnectedState\0ConnectingState\0"
    "ConnectedState\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QXmppClient[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      18,   14, // methods
       2,  152, // properties
       2,  160, // enums/sets
       0,    0, // constructors
       0,       // flags
       8,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,  104,    2, 0x06,
       3,    0,  105,    2, 0x06,
       4,    1,  106,    2, 0x06,
       6,    1,  109,    2, 0x06,
       9,    1,  112,    2, 0x06,
      12,    1,  115,    2, 0x06,
      15,    1,  118,    2, 0x06,
      18,    1,  121,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
      21,    2,  124,    2, 0x0a,
      24,    0,  129,    2, 0x0a,
      25,    1,  130,    2, 0x0a,
      27,    2,  133,    2, 0x0a,
      29,    2,  138,    2, 0x08,
      34,    0,  143,    2, 0x08,
      35,    1,  144,    2, 0x08,
      37,    0,  147,    2, 0x08,
      38,    0,  148,    2, 0x08,
      39,    1,  149,    2, 0x08,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 5,    2,
    QMetaType::Void, 0x80000000 | 7,    8,
    QMetaType::Void, 0x80000000 | 10,   11,
    QMetaType::Void, 0x80000000 | 13,   14,
    QMetaType::Void, 0x80000000 | 16,   17,
    QMetaType::Void, 0x80000000 | 19,   20,

 // slots: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   22,   23,
    QMetaType::Void,
    QMetaType::Bool, 0x80000000 | 26,    2,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   28,   11,
    QMetaType::Void, 0x80000000 | 30, 0x80000000 | 32,   31,   33,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 36,   20,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 5,    4,

 // properties: name, type, flags
       8, 0x80000000 | 7, 0x0049510b,
      20, 0x80000000 | 40, 0x00495009,

 // properties: notify_signal_id
       3,
       7,

 // enums: name, flags, count, data
      41, 0x0,    4,  168,
      40, 0x0,    3,  176,

 // enum data: key, value
      42, uint(QXmppClient::NoError),
      43, uint(QXmppClient::SocketError),
      44, uint(QXmppClient::KeepAliveError),
      45, uint(QXmppClient::XmppStreamError),
      46, uint(QXmppClient::DisconnectedState),
      47, uint(QXmppClient::ConnectingState),
      48, uint(QXmppClient::ConnectedState),

       0        // eod
};

void QXmppClient::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QXmppClient *_t = static_cast<QXmppClient *>(_o);
        switch (_id) {
        case 0: _t->connected(); break;
        case 1: _t->disconnected(); break;
        case 2: _t->error((*reinterpret_cast< QXmppClient::Error(*)>(_a[1]))); break;
        case 3: _t->loggerChanged((*reinterpret_cast< QXmppLogger*(*)>(_a[1]))); break;
        case 4: _t->messageReceived((*reinterpret_cast< const QXmppMessage(*)>(_a[1]))); break;
        case 5: _t->presenceReceived((*reinterpret_cast< const QXmppPresence(*)>(_a[1]))); break;
        case 6: _t->iqReceived((*reinterpret_cast< const QXmppIq(*)>(_a[1]))); break;
        case 7: _t->stateChanged((*reinterpret_cast< QXmppClient::State(*)>(_a[1]))); break;
        case 8: _t->connectToServer((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 9: _t->disconnectFromServer(); break;
        case 10: { bool _r = _t->sendPacket((*reinterpret_cast< const QXmppStanza(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 11: _t->sendMessage((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 12: _t->_q_elementReceived((*reinterpret_cast< const QDomElement(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 13: _t->_q_reconnect(); break;
        case 14: _t->_q_socketStateChanged((*reinterpret_cast< QAbstractSocket::SocketState(*)>(_a[1]))); break;
        case 15: _t->_q_streamConnected(); break;
        case 16: _t->_q_streamDisconnected(); break;
        case 17: _t->_q_streamError((*reinterpret_cast< QXmppClient::Error(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 3:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QXmppLogger* >(); break;
            }
            break;
        case 14:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QAbstractSocket::SocketState >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QXmppClient::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppClient::connected)) {
                *result = 0;
            }
        }
        {
            typedef void (QXmppClient::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppClient::disconnected)) {
                *result = 1;
            }
        }
        {
            typedef void (QXmppClient::*_t)(QXmppClient::Error );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppClient::error)) {
                *result = 2;
            }
        }
        {
            typedef void (QXmppClient::*_t)(QXmppLogger * );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppClient::loggerChanged)) {
                *result = 3;
            }
        }
        {
            typedef void (QXmppClient::*_t)(const QXmppMessage & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppClient::messageReceived)) {
                *result = 4;
            }
        }
        {
            typedef void (QXmppClient::*_t)(const QXmppPresence & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppClient::presenceReceived)) {
                *result = 5;
            }
        }
        {
            typedef void (QXmppClient::*_t)(const QXmppIq & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppClient::iqReceived)) {
                *result = 6;
            }
        }
        {
            typedef void (QXmppClient::*_t)(QXmppClient::State );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppClient::stateChanged)) {
                *result = 7;
            }
        }
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QXmppLogger* >(); break;
        }
    }

}

const QMetaObject QXmppClient::staticMetaObject = {
    { &QXmppLoggable::staticMetaObject, qt_meta_stringdata_QXmppClient.data,
      qt_meta_data_QXmppClient,  qt_static_metacall, 0, 0}
};


const QMetaObject *QXmppClient::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QXmppClient::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QXmppClient.stringdata))
        return static_cast<void*>(const_cast< QXmppClient*>(this));
    return QXmppLoggable::qt_metacast(_clname);
}

int QXmppClient::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QXmppLoggable::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 18)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 18;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 18)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 18;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QXmppLogger**>(_v) = logger(); break;
        case 1: *reinterpret_cast< State*>(_v) = state(); break;
        }
        _id -= 2;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setLogger(*reinterpret_cast< QXmppLogger**>(_v)); break;
        }
        _id -= 2;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void QXmppClient::connected()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void QXmppClient::disconnected()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void QXmppClient::error(QXmppClient::Error _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void QXmppClient::loggerChanged(QXmppLogger * _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void QXmppClient::messageReceived(const QXmppMessage & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void QXmppClient::presenceReceived(const QXmppPresence & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void QXmppClient::iqReceived(const QXmppIq & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void QXmppClient::stateChanged(QXmppClient::State _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}
QT_END_MOC_NAMESPACE
