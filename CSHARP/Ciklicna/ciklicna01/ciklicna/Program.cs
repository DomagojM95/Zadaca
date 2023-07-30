
int redaka = 5, stupaca = 5;


//Console.Write("unesi broj redova: ");
//redaka=int.Parse(Console.ReadLine());


//Console.WriteLine("unesi broj stupaca: ");
//stupaca = int.Parse(Console.ReadLine());


int[,] matrica = new int[redaka, stupaca];




for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + "  ");
    }
    Console.WriteLine();
}

Console.WriteLine("U LIJEVO***********************");



int b = 1;


////matrica[redaka -1, stupaca-1] = b++;
////matrica[redaka-1, stupaca-2] = b++;
////matrica[redaka - 1, stupaca - 3] = b++;
////matrica[redaka - 1, stupaca - 4] = b++;
////matrica[redaka - 1, stupaca - 5] = b++;

for (int i = 1; i <= stupaca; i++)
{
    matrica[redaka - 1, stupaca - i] = b++;
}



for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();

}


Console.WriteLine("GORE***********************");


for (int i = redaka - 2; i >= 0; i--)
{
    matrica[i, 0] = b++;
}



for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();
}

Console.WriteLine("U DESNO***********************");


for (int i = 1; i < stupaca; i++)
{
    matrica[0, i] = b++;
}

for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();

}

Console.WriteLine("DOLJE***********************");


for (int i = 1; i <= redaka - 2; i++)
{
    matrica[i, 4] = b++;
}

for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();

}

Console.WriteLine("U LJEVO***********************");



for (int i = 3; i >= stupaca - 4; i--)
{
    matrica[3, i] = b++;
}


for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();

}

Console.WriteLine("U GORE***********************");

for (int i = redaka - 3; i > 0; i--)
{
    matrica[i, 1] = b++;
}

for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();

}

Console.WriteLine("U DESNO***********************");

for (int i = 2; i <= stupaca - 2; i++)
{
    matrica[1, i] = b++;
}
for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();

}


Console.WriteLine("DOLJE***********************");



for (int i = 2; i < redaka - 2; i++)
{
    matrica[i, 3] = b++;
}

for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();

}

Console.WriteLine("U LJEVO***********************");



for (int i = 2; i >= stupaca - 3; i--)
{
    matrica[2, i] = b++;
}


for (int i = 0; i < redaka; i++)
{
    for (int j = 0; j < stupaca; j++)
    {
        Console.Write(matrica[i, j] + " ");
    }
    Console.WriteLine();

}
