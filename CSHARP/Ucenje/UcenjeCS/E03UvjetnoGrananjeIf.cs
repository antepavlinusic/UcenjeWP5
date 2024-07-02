using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E03UvjetnoGrananjeIf
    {


        public static void Izvedi()
        {


            int i = 8;

            bool uvjet = i == 7;

            Console.WriteLine(uvjet);

            if (uvjet) {

                Console.WriteLine("Vrijednost varijebale i je 8");
                }


            if (i > 10)
            {

                Console.WriteLine("i je veći od 10");
            }
            else
            {
                Console.WriteLine("i nije veči od 10")
                    ;
            }


            if(i>10) Console.WriteLine("i je veći od 10");
            else Console.WriteLine("i nije veći od 10");


            int b = 2;
            if(b==1)
            {
                Console.WriteLine("Ne može");



            }
            else if (b>5)
            {
                Console.WriteLine("OK");
            }
            else
            {
                Console.WriteLine("ostalo");
            }



            int x = 2, y = 1;

            if (x==1 && y==1)
            {
                Console.WriteLine("x i y su 1");
            }


            if(x>1 || y == 0)
            {

                Console.WriteLine("ako je prvi uvjet zadovoljen ulazi se u if");
            }


            if (x==3)
            {
                int k = 9;
                if (i > 0) ;

                {
                    Console.WriteLine("Zadovoljeno");
                }


            }

            x = 0;
            if(x ==0)
            {
                Console.WriteLine("ok");
            }
            else
            {
                Console.WriteLine("ne");
            }


            Console.WriteLine(x==0 ? "OK" : "NE");







        }





    }
}
