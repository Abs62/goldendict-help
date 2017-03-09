TEMPLATE = aux

GENERATOR = $$[QT_INSTALL_BINS]/qhelpgenerator
QDOC = $$[QT_INSTALL_BINS]/qdoc3

docs.depends = $$PWD/ru/gdhelp_ru.qdoc $$PWD/en/gdhelp_en.qdoc
docs.commands = $$QDOC $$PWD/ru/gdhelp_ru.qdocconf $$PWD/en/gdhelp_en.qdocconf \
                && $$GENERATOR $$PWD/ru/html/goldendict.qhp -o $$PWD/help/gdhelp_ru.qch \
                && $$GENERATOR $$PWD/en/html/goldendict.qhp -o $$PWD/help/gdhelp_en.qch

QMAKE_EXTRA_TARGETS += docs
