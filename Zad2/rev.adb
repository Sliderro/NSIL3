package body Rev with SPARK_Mode is
  procedure Rev (S : in out String)
   is
      Str : String := S;
   begin
      for I in S'Range loop
         Str(I) := S(S'First + S'Last - I);
         pragma Loop_Invariant(for all J in S'First .. I => Str(J) = S(S'First + S'Last - J));
      end loop;
      S := Str;
  end Rev;
end Rev;
