//Console.WriteLine("unesi dva cijela broja");
//Console.WriteLine("prvi broj");

//int b1=int.Parse(Console.ReadLine());

//Console.WriteLine("drugi broj");

//int b2=int.Parse(Console.ReadLine());

//if (b1 > b2)
//{
//    Console.WriteLine( b1);
//}
//else if (b1 < b2)
//{
//    Console.WriteLine(b2);
//}
//else if(b2 == b1)
//{
//    Console.WriteLine("brojevi su jednaki");
//}




Console.WriteLine("upisi tri cijela broja");

int b1= int.Parse(Console.ReadLine());
int b2 = int.Parse(Console.ReadLine());
int b3 = int.Parse(Console.ReadLine());

//Console.WriteLine(((b1 > b2) && (b1>b3) ? b1 ) + "broj je najveci") ;


if ((b1 > b2) && (b1 > b3))
{
    Console.WriteLine((b1) + " " + "je najveci");
}
else if ((b2 > b1) && (b2 > b3))
{
    Console.WriteLine((b2) + " " + "je najveci");
}
else if ((b3 > b1) && (b3 > b2))
{
    Console.WriteLine((b3) + " " + "je najveci");
}
