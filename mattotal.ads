generic
   type Tipodato is private;
   type Indice is (<>);
   type TipoMat is array (Indice, Indice) of Tipodato;

   with procedure Get(X: out Tipodato);
   with procedure Put(X: in Tipodato);
   with procedure Put(Y: in String);
   with procedure Put_Line(Y: in String);
   with function ">" (X, Y: in Tipodato) return Boolean;
   with function "<" (X, Y: in Tipodato) return Boolean;

package MatTotal is
   procedure Lectura(X: out TipoMat);
   procedure Impresion(X: in TipoMat);
   function Comparar(X, Y: in TipoMat) return Integer;
   procedure Ordenar(X: in out TipoMat);
   procedure Traspuesta(X: in out Tipomat);
   procedure busqueda(X: Tipomat; elemento: tipodato; fila,columna: out integer; encontro: out boolean);
end MatTotal;
