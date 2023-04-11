with Ada.Text_Io,mattotal,ada.Integer_Text_IO;
use Ada.Text_Io,Ada.Integer_Text_Io;

procedure Usamattotal is
   subtype Rango is Integer range 1..3;
   type Mat is array(Rango,Rango) of Integer;

procedure Getmatx(X: out Integer) is
begin
get(X);
end Getmatx;

procedure Putmatx(X: in Integer) is
begin
    Put(X, 3);
end Putmatx;

procedure Putstring(X: in String) is
begin
    Put(X);
end Putstring;

procedure Putlinestring(X: in String) is
begin
    Put_Line(X);
end Putlinestring;

package Matinc is new Mattotal(Integer, Rango, Mat, Getmatx, Putmatx, Putstring, Putlinestring, ">", "<");
use Matinc;

X, Y: Mat;

-- Programa principal
procedure Programa_Prin(X, Y: in out Mat) is

    Option,temp,elemento,fila,columna: Integer;
    encontro:boolean;
begin

    Put_Line("------------------------------");
    Put_Line("Programa con uso de paquetes");
    Put_Line("------------------------------");
    New_Line;

    Put_Line("Ingrese los datos de la primer matriz");
    Lectura(X);

    put_line("Ingrese los datos de la segunda matriz");
    Lectura(Y);

    while Option /= 5 loop

        New_Line;

        Put_Line("--------------------------------------");
        Put_Line("Seleccione la la operacion a ejecutar:");
        Put_Line("--------------------------------------");

        new_line;

        Put_Line("1. Comparar matrices");
        Put_Line("2. Ordenar las matrices");
        Put_Line("3. Imprimir matrices");
        Put_Line("4. Buscar un elemento");
        Put_Line("5. Salir del programa");

        Get(option);

        New_Line;

        case Option is

            when 1 =>
                if Comparar(X, Y) > 0 then
                    Put_Line("La matriz 1 es mayor a la matriz 2.");
                elsif Comparar(X, Y) < 0 then
                    Put_Line("La miatriz 1 es menor a la matriz 2.");
                else
                    Put_line("La matriz 1 y la matriz 2 son iguales.");
                end if;

            when 2 =>
                Ordenar(x);
                new_line;
                Ordenar(Y);

            when 3 =>
                Impresion(x);
                new_line;
                Impresion(Y);

            when 4 =>
                new_line;
                Put_Line("Ingrese el elemento a buscar:");
                Get(Elemento);
             
               Busqueda(x, Elemento, fila,columna,encontro);

                if encontro then
                    New_Line;
                    Put_line("El elemento se encontro en la matriz 1 en la la fila:" & integer'image(fila) & " columna:" & integer'image(columna));
                else
                    new_line;
                    Busqueda(y, Elemento, fila,columna,encontro);

                    if encontro then
                        new_line;
                        Put_line("El elemento se encontro en la matriz 2 en la la fila:" & integer'image(fila) & " columna:" & integer'image(columna));
                    else
                        new_line;
                        Put_Line("El elemento no encontrado!");
                    end if;
                end if;

            when 5 =>
                Put_Line(" ");

            when others =>
                Put_Line("Opcion invalida!");

        end case;

    end loop;

end Programa_Prin;

begin

    Programa_Prin(X, Y);

end Usamattotal;
