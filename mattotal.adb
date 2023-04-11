package body Mattotal is
   
   -- Ingreso de datos
   procedure Lectura(x: out Tipomat) is
      
   begin
      
      for I in Indice'First .. Indice'Last loop
         for J in Indice'First .. Indice'Last loop
            get(x(I,J));
         end loop;
      end loop;
      
   end Lectura;
   

   -- Impresión
   procedure Impresion(X: in Tipomat) is
      
   begin
         
      for I in Indice'First .. Indice'Last loop
         put("[");
            
         for J in Indice'First .. Indice'Last loop
            put(x(I,J));
         end loop;
            
         put_line("]");
      end loop;
         
   end Impresion;
   

   -- Comparar matriz
   function Comparar(X,Y: Tipomat) return Integer is
      Temp: Integer;
      
   begin
      Temp:=0;
      
      for I in Indice'First .. Indice'Last loop
         for J in Indice'First .. Indice'Last loop
            if X(I,J) > Y(I,J) then
               Temp:=Temp+1;
            elsif X(I,J) < Y(I,J) then
               Temp:=Temp-1;
            end if;
         end loop;   
      end loop;
      
      return Temp;
      
   end Comparar;
      

    -- Ordenar matriz
   procedure Ordenar(X: in out Tipomat) is
         
      Traspuesta:Tipomat;
      Cambio:Boolean:=True;
      Tope: Indice;
      Temp: Tipodato;
         
   begin
         
      Tope:= Indice'Last;
         
      -- Transponer la matriz
      for I in Indice'First .. Indice'Last loop
         for J in Indice'First .. Indice'Last loop
            Traspuesta(J,I):=X(I,J);
         end loop;
      end loop;
            
      -- Ordenar las filas de la matriz transpuesta
      for I in Indice'First..Indice'Last loop
         for J in Indice'First ..Indice'Pred(Tope) loop
            if Traspuesta(I,J) > Traspuesta(I,Indice'Succ(J)) then
               Temp:=Traspuesta(I,J);
               Traspuesta(I,J):=Traspuesta(I,Indice'Succ(J));
               Traspuesta(I,Indice'Succ(J)):=Temp;
               Cambio:=True;
            end if;
         end loop;
      end loop;
      
      -- Transponer la matriz de vuelta
      for I in Indice'First .. Indice'Last loop
         for J in Indice'First .. Indice'Last loop
            X(I,J):=Traspuesta(J,I);
         end loop;
      end loop;
         
   end Ordenar;
   
-- Transponer matriz
   procedure Traspuesta(X: in out Tipomat) is
         
      Traspuesta:Tipomat;
         
   begin
         
      for I in Indice'First .. Indice'Last loop
         for J in Indice'First .. Indice'Last loop
            Traspuesta(J,I):=X(I,J);
         end loop;
      end loop;
         
      for I in Indice'First .. Indice'Last loop
               for J in Indice'First .. Indice'Last loop
                  
                  X(I,J):=traspuesta(I,J);
                  
               end loop;
            end loop;

   end Traspuesta;


--Busqueda en la matriz
  procedure Busqueda(X: in Tipomat; elemento: in Tipodato; fila,columna: out integer; encontro: out boolean ) is
     Cont,cont1:Integer;
     
  begin
     
     Fila:=0;
     Columna:=0;
     Cont:=0;
     cont1:=0;
     encontro:=false;
     for I in Indice'range loop
        cont1:=cont1+1;
        cont:=0;
        for J in Indice'range loop
           cont:=cont+1;
           if X(I,J)=Elemento then
              Encontro:=True;
              Columna:=Cont;
              fila:=cont1;
           end if;
        end loop;
           end loop;
end Busqueda;


   end Mattotal;
