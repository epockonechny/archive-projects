/****************************************************************************
** Meta object code from reading C++ file 'QXmppBookmarkManager.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "client/QXmppBookmarkManager.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QXmppBookmarkManager.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QXmppBookmarkManager_t {
    QByteArrayData data[7];
    char stringdata[99];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_QXmppBookmarkManager_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_QXmppBookmarkManager_t qt_meta_stringdata_QXmppBookmarkManager = {
    {
QT_MOC_LITERAL(0, 0, 20),
QT_MOC_LITERAL(1, 21, 17),
QT_MOC_LITERAL(2, 39, 0),
QT_MOC_LITERAL(3, 40, 16),
QT_MOC_LITERAL(4, 57, 9),
QT_MOC_LITERAL(5, 67, 13),
QT_MOC_LITERAL(6, 81, 16)
    },
    "QXmppBookmarkManager\0bookmarksReceived\0"
    "\0QXmppBookmarkSet\0bookmarks\0slotConnected\0"
    "slotDisconnected\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QXmppBookmarkManager[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
       5,    0,   32,    2, 0x08,
       6,    0,   33,    2, 0x08,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void QXmppBookmarkManager::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QXmppBookmarkManager *_t = static_cast<QXmppBookmarkManager *>(_o);
        switch (_id) {
        case 0: _t->bookmarksReceived((*reinterpret_cast< const QXmppBookmarkSet(*)>(_a[1]))); break;
        case 1: _t->slotConnected(); break;
        case 2: _t->slotDisconnected(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QXmppBookmarkManager::*_t)(const QXmppBookmarkSet & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QXmppBookmarkManager::bookmarksReceived)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject QXmppBookmarkManager::staticMetaObject = {
    { &QXmppClientExtension::staticMetaObject, qt_meta_stringdata_QXmppBookmarkManager.data,
      qt_meta_data_QXmppBookmarkManager,  qt_static_metacall, 0, 0}
};


const QMetaObject *QXmppBookmarkManager::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QXmppBookmarkManager::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QXmppBookmarkManager.stringdata))
        return static_cast<void*>(const_cast< QXmppBookmarkManager*>(this));
    return QXmppClientExtension::qt_metacast(_clname);
}

int QXmppBookmarkManager::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QXmppClientExtension::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void QXmppBookmarkManager::bookmarksReceived(const QXmppBookmarkSet & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
