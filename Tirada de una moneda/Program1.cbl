       identification division.
       program-id. Program1.

       environment division.
       configuration section.

       data division.
       working-storage section.
       01  hora.
           05  filler             pic 9(6).
           05  hx                 pic 99.
       01  cara-cruz              pic 9.
       01  tiradas                pic 99             value 0.
       
       procedure division.
           
           perform tirar-moneda until tiradas > 10
           
           goback.
           
       tirar-moneda.
           accept hora from time
           divide hx by 2 giving cara-cruz remainder cara-cruz
           
           evaluate cara-cruz
               when 0
                   display "cara"
               when 1
                   display "cruz"
           end-evaluate
           stop ' '
           add 1 to tiradas.

       end program Program1.