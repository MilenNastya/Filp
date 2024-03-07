main :-
    retractall(asked(_,_)),
    fault(Problem),
    !,
    nl,
    write('The problem is '), write(Problem), write(.), nl.
main :-
    nl,
    write('The problem cannot be recognized.'), nl.

problem("Самый маленький"):-query('Диагональ устройства равна 3.5 дюйма?').
problem("Маленький"):-query('Диагональ устройства равна 4.0 дюйма?').
problem("Между маленьким и средним"):-query('Диагональ устройства равна 4,7-5,4 дюйма?').
problem("Между средним и маленьким"):-query('Диагональ устройства равна 5,5 -5.7 дюйма?').
problem("Cредний"):-query('Диагональ устройства равна 5,8-6.1 дюйма').
problem("Большой"):-query('Диагональ устройства равна 6.5 -6.7?').

problem("Процессор для 3 айфона"):-query('Процессор устройства Samsung APL0298C05?').
problem("Процессор для 4 айфона"):-query('Процессор устройства Apple A4?').
problem("Процессор для 5 айфона"):-query('Процессор устройства pple A6?').
problem("Процессор для 5s айфона"):-query('Процессор устройства Apple A7?').
problem("Процессор для 6 айфона"):-query('Процессор устройства Apple A8?').
problem("Процессор для 6s айфона"):-query('Процессор устройства Apple A9?').
problem("Процессор для 7/7plus айфона"):-query('Процессор устройства Apple A10 Fusion?').
problem("Процессор для 8/8 plus/X айфона"):-query('Процессор устройства Apple A11 Bionic?').
problem("Процессор для XR айфона"):-query('Процессор устройства Apple A12 Bionic?').
problem("Процессор для 11 айфона"):-query('Процессор устройства Apple A13 Bionic?').
problem("Процессор для 12 айфона"):-query('Процессор устройства Apple A14 Bionic?').
problem("Процессор для 13 айфона"):-query('Процессор устройства Apple A15 Bionic?').
problem("Процессор для 14 айфона"):-query('Процессор устройства Apple A16 Bionic?').
problem("Процессор для 15 айфона"):-query('Процессор устройства Apple A17 Bionic?').

problem("Новшества 3"):-query('У вашего устройства только появилась поддержка более быстрого сетевого стандарта 3G?').
problem("Новшества 4"):-query('У вашего устройства только появилась фронтальная камера?').
problem("Новшества 5"):-query('У вашего устройства только появился 4-ч дюймовый дисплей?').
problem("Новшества 5s"):-query('У вашего устройства только появилась память на 64 гб?').
problem("Новшества 6"):-query('У вашего устройства только появилась память на 128 гб?').
problem("Новшества 7"):-query('У вашего устройства только появилась возможность съемки на широкоугольную камеру?').
problem("Новшества 8"):-query('У вашего устройства только появился True Tone Display?').
problem("Новшества X"):-query('У вашего устройства только появилась "чёлка"?').
problem("Новшества XR"):-query('У вашего устройства такие же почти характеристики, как у X, но он дешевле?').
problem("Новшества 11"):-query('У вашего устройства только появилась возможность ночной съемки?').
problem("Новшества 12"):-query('У вашего устройства только появилась возможность снимать видео/фотографии с 5-кратным оптическим зумом?').
problem("Новшества 13"):-query('У вашего устройства только появилась частота обновления экранов -120 гц? ').
problem("Новшества 14"):-query('У вашего устройства такие же характеристики, как у 13?').
problem("Новшества 14 PRO MAX"):-query('У вашего устройства только появился Dynamic Island? ').
problem("Новшества 15"):-query('У вашего устройства поменялся разъем для зарядки?').
problem("Новшества 15 PRO MAX"):-query('Ваше устройство находится в титановом корпусе?').

fault('Iphone 3') :-
    problem("Самый маленький"),
    problem("Процессор для 3 айфона"),
    problem("Новшества 3").

fault('Iphone 4') :-
    problem("Самый маленький"),
    problem("Процессор для 4 айфона"),
    problem("Новшества 4").

fault('Iphone 5') :-
    problem("Маленький"),
    problem("Процессор для 5 айфона"),
    problem("Новшества 5").

fault('Iphone 5s') :-
    problem("Маленький"),
    problem("Процессор для 5s айфона"),
    problem("Новшества 5s").

fault('Iphone 6') :-
    problem("Между маленьким и средним"),
    problem("Процессор для 6 айфона"),
    problem("Новшества 6s").

fault('Iphone 7') :-
    problem("Между маленьким и средним"),
    problem("Процессор для 7/7plus айфона"),
    problem("Новшества 7").

fault('Iphone 7 plus') :-
    problem("Между средним и маленьким"),
    problem("Процессор для 7/7plus айфона"),
    problem("Новшества 7").

fault('Iphone 8') :-
    problem("Между маленьким и среднем"),
    problem("Процессор для 8/8plus/X айфона"),
    problem("Новшества 8").

fault('Iphone 8 plus') :-
    problem("Между средним и маленьким"),
    problem("Процессор для 8/8plus/X айфона"),
    problem("Новшества 8").

fault('Iphone X') :-
    problem("Средний"),
    problem("Процессор для 8/8plus/10 айфона"),
    problem("Новшества X").

fault('Iphone XR') :-
    problem("Средний"),
    problem("Процессор для XR айфона"),
    problem("Новшества XR").

fault('Iphone 11') :-
    problem("Средний"),
    problem("Процессор для 11 айфона"),
    problem("Новшества 11").

fault('Iphone 12') :-
    problem("Средний"),
    problem("Процессор для 12 айфона"),
    problem("Новшества 12").

fault('Iphone 13') :-
    problem("Средний"),
    problem("Процессор для 13 айфона"),
    problem("Новшества 13").

fault('Iphone 13 PRO MAX') :-
    problem("Большой"),
    problem("Процессор для 13 айфона"),
    problem("Новшества 13").

fault('Iphone 14') :-
    problem("Средний"),
    problem("Процессор для 14 айфона"),
    problem("Новшества 14").

fault('Iphone 14 PRO MAX') :-
    problem("Большой"),
    problem("Процессор для 14 айфона"),
    problem("Новшества 14 PRO MAX ").


fault('Iphone 15') :-
    problem("Средний"),
    problem("Процессор для 15 айфона"),
    problem("Новшества 15").

fault('Iphone 15 PRO MAX') :-
    problem("Большой"),
    problem("Процессор для 15 айфона"),
    problem("Новшества 15 PRO MAX").


query(Prompt) :-
    (   asked(Prompt, Reply) -> true
    ;   nl, write(Prompt), write(' (y/n)? '),
        read(X),(X = y -> Reply = y ; Reply = n),
	assert(asked(Prompt, Reply))
    ),
    Reply = y.