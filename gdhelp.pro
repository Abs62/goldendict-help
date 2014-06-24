TEMPLATE = aux

GENERATOR = $$[QT_INSTALL_BINS]/qhelpgenerator
QDOC = $$[QT_INSTALL_BINS]/qdoc3

docs.depends = ./ru/gdhelp_ru.qdoc ./en/gdhelp_en.qdoc
docs.commands = $$QDOC ./ru/gdhelp_ru.qdocconf ./en/gdhelp_en.qdocconf \
                && $$GENERATOR ./ru/html/goldendict.qhp -o ./help/gdhelp_ru.qch \
                && $$GENERATOR ./en/html/goldendict.qhp -o ./help/gdhelp_en.qch

QMAKE_EXTRA_TARGETS += docs
