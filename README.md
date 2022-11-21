# [ИУ1] Методы вычислений
## Осень 2022

* [Лабораторные](#laboratories)
* [Практики](#statements)
* [Интсрукция](#instruction)

<a name="laboratories"></a>

# Лабораторные

* [Лабораторная 1. "Халявная". Основы работы в MATLAB](lab/lab01/lab01.pdf)
* [Лабораторная 2. "Эпическая". Численные мтоды решения СЛАУ](lab/lab02/lab02.pdf)
* [Лабораторная 3. "Простецкая". Численные методы решения ОДУ](lab/lab03/lab03.pdf)
* [Лабораторная 4. "Новенькая". Интерполяция функций](lab/lab04/lab04.pdf)
* [Лабораторная 5. "Оптимальненькая". Численные методы решения задач оптимизации](lab/lab05/lab05.pdf)
* [Лабораторная 6. "Мозголомательная". Реализация алгоритма БПФ](lab/lab06/lab06.pdf)
* [Лабораторная 7. "Наиполезнейшая". Моделирование динамических систем](lab/lab07/lab07.pdf)
* [Лабораторная 8. "Параллельная". Параллельные вычисления в MatLAB](lab/lab08/lab08.pdf)


<a name="statements"></a>

# Примеры отчётов

* [Отчёт 1. Основы работы в MATLAB](lab/lab01/lab01-statement.pdf)
* [Отчёт 2. Численные мтоды решения СЛАУ](lab/lab02/lab02-statement.pdf)
* [Отчёт 3. Численные методы решения ОДУ](lab/lab03/lab03-statement.pdf)
* [Отчёт 4. Интерполяция функций](lab/lab04/lab04-statement.pdf)
* [Отчёт 5. Численные методы решения задач оптимизации](lab/lab05/lab05-statement.pdf)
* [Отчёт 6. Реализация алгоритма БПФ](lab/lab06/lab06-statement.pdf)
* [Отчёт 7. Моделирование динамических систем](lab/lab07/lab07-statement.pdf)
* [Отчёт 8. Параллельные вычисления в MatLAB](lab/lab08/lab08-statement.pdf)


<a name="instruction"></a>

# Инструкия

## 1. Склонировать репозиторий себе на компьютер
Для HTTPS
```
git clone https://github.com/BMSTU-Automatic-Control-Systems-IU1-1/method-of-calculation.git
```
Для SSH
```
git clone git@github.com:BMSTU-Automatic-Control-Systems-IU1-1/method-of-calculation.git
```

## 2. Перейти в папку с проектом
```
cd \method-of-calculation\
```

## 3. Создать ветку и назвать её
```
git checkout -b making_practice_(номер практики)
```

## 4. Открыть папку проекта в среде MatLab

## 5. Выполнить работу
Файл .md с методами называть в соотвествии с названием методов (Gauss | Kramer | Lagrange)

## 6. Сохранить изменения
```
git status
git add .
git commit -m "practise (номер практики) | methods (названия методов) | (имя разработчика)"
```

## 7. Отправить изменения в удалённый репозиторий
```
git push origin making_practice_(номер практики):making_practice_(номер практики)
```

## 8. Создать pull-request в ветку main
* Для этого нажать на вкладку pull-request
* New-pull-request
* base: main <- compare: making_practice_(номер практики)
* Assignees: Alex777Russia
* create pull-request

## Готово

Дополнительные материалы:

* [Введение в MATLAB - В.В.Шестаков](14-09-2022-Metoda_MatLab.pdf)
* [Основы программирования в MathWorks MATLAB - Масленников А.Л.](14-09-2022-matlab.pdf)
* [Вопросы к зачёту](14-09-2022-Методы_вычислений_вопросы_к_зачету.pdf)
* Итог дисциплины: зачёт

------
## Преподаватель: Бобков Александр Валентинович
## Почта: alexander.bobkov@bmstu.ru
