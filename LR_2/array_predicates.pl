%Задание 4
%Решить логическую задачу по варианту.
%Вариант № 8 Три подруги вышли в белом, зеленом и синем платьях и туфлях.
%Известно, что только у Ани цвета платья и туфлей совпадали. Ни туфли, ни платье Вали не
%были белыми. Наташа была в зеленых туфлях. Определить цвета платья и туфель на каждой
%из подруг.
%in_list(?InputList,?El)
in_list([El|_],El).
in_list([_|Tail],El):-in_list(Tail,El).

%in_list1(+InputList,+El)
in_list1([El|_],El):-!.
in_list1([_|Tail],El):-in_list1(Tail,El).

pr_girlfriends:-Girls = [_,_,_],
    in_list(Girls,[_,green,_]),
    in_list(Girls,[_,blue,_]),
    in_list(Girls,[_,white,_]),
    in_list(Girls,[_,_,green]),
    in_list(Girls,[_,_,blue]),
    in_list(Girls,[_,_,white]),
    in_list(Girls,[vali,_,_]),
    in_list(Girls,[anna,Color1,Color1]),
    in_list(Girls,[natasha,green,_]),
    not(in_list(Girls,[vali,white,_])),
    not(in_list(Girls,[vali,_,white])),

    not(in_list(Girls,[vali,Color2,Color2])),
    not(in_list(Girls,[natasha,Color3,Color3])),
    
    in_list(Girls,[vali,Shoes1,Dress1]),
    in_list(Girls,[anna,Shoes2,Dress2]),
    in_list(Girls,[natasha,Shoes3,Dress3]),
    write("vali:"),write(Shoes1),write(" "), write(Dress1),nl,
    write("anna:"),write(Shoes2),write(" ") ,write(Dress2),nl,
    write("natasha:"),write(Shoes3), write(" "),write(Dress3),nl,!.