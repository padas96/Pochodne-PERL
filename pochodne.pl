#!/usr/bin/perl

$poz_wiel=@ARGV[0];
@tab=(0);
$tab2=(0);
$i=0;
$k=1;
$m=-1;
printf "\n";

foreach $arg (@ARGV) #Sprawdzanie ilosci podanych argumentow
{
	$m++;
}

if ($m!=@ARGV[0])
{
printf "Podales za malo argumentow!\nPierwszy argument to stopien wielomianu,\nkolejne argumenty to kolejne wspolczynniki,\nliczba wspolczynnikow powinna odpowiadac stopniowi wielomianu.\n\n";
	exit;
}

for ($poz_wiel; $poz_wiel>0; $poz_wiel--)
{
	$tab[0+$i]=($poz_wiel*$ARGV[1+$i]); #Obliczanie pochodnych i zapisywanie wynikow do nowej tablicy
	$tab2[0+$i]=$ARGV[1+$i]; #Tworzenie tablicy funkcji wejsciowej
	$i++;
}

printf "f (x)= ";
foreach $b (@tab2) #Wyswietlanie funkcji wejsciowej
{
	if ($k>1 && $b>0)
	{
	printf '+';
	}

	$c=$ARGV[0]-$k+1;
	if ($b!=0)
	{
	printf "$b";	
	if ($c>=2)
	{
		printf "x[";
		printf "$c]";
				
	}
	elsif ($c!=0)
	{
		printf "x";
	}
	}
	$k++;
}


printf "+C\n";
$k=1;
printf "f'(x)= ";
foreach $a (@tab) #Wyswietlanie pochodnej
{
	if ($k>1 && $a>0)
	{
	printf '+';
	}

	$c=$ARGV[0]-$k;
	if ($a!=0)
	{
	printf "$a";	
	if ($c>=2)
	{
		printf "x[";
		printf "$c]";
				
	}
	elsif ($c!=0)
	{
		printf "x";
	}
	}	
	$k++;
}

	printf "\n\n";
