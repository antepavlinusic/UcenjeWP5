using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E03Z1
    {


         public static void Izvedi()
        {

           

           int brojgodina = Convert.ToInt32(Console.ReadLine()) ;

            if (brojgodina <= 2006) Console.WriteLine("punoljetan");
            else if(brojgodina == 2006){

                Console.WriteLine("UNESI MJESEC");
                

            }
            else Console.WriteLine("nije punoljetan");






        }



    }
}
