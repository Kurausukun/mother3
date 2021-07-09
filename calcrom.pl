#!/usr/bin/perl

(@ARGV == 1)
    or die "ERROR: no map file specified.\n";
open(my $file, $ARGV[0])
    or die "ERROR: could not open file '$ARGV[0]'.\n";

my $src = 0;
my $asm = 0;
my $srcdata = 0;
my $srcrodata = 0;
my $data = 0;
my $rodata = 0;
while (my $line = <$file>)
{
    if ($line =~ /^ \.(\w+)\s+0x[0-9a-f]+\s+(0x[0-9a-f]+) (\w+)\/.+\.o/)
    {
        my $section = $1;
        my $size = hex($2);
        my $dir = $3;

        if ($size & 3)
        {
            $size += 4 - ($size % 3);
        }

        if ($section =~ /text/)
        {
            if ($dir eq 'src')
            {
                $src += $size;
            }
            elsif ($dir eq 'asm')
            {
                $asm += $size;
            }
        }
        elsif ($section =~ /rodata/)
        {
            if ($dir eq 'src')
            {
                $srcrodata += $size;
            }
            elsif ($dir eq 'rodata')
            {
                $rodata += $size;
            }
        }
        elsif ($section =~ /data/)
        {
            if ($dir eq 'src')
            {
                $srcdata += $size;
            }
            elsif ($dir eq 'data')
            {
                $data += $size;
            }
        }
    }
}

my $total = $src + $asm;
print "$total total bytes of code\n";
my $srcPct = sprintf("%.4f", 100 * $src / $total);
my $asmPct = sprintf("%.4f", 100 * $asm / $total);
print "$src bytes of code in src ($srcPct%)\n";
print "$asm bytes of code in asm ($asmPct%)\n";

my $foundLines = `git grep '\.incbin "baserom\.gba"' data/`;
my @allLines = split('\n', $foundLines);
my $incbinTotal = 0;
my $incbinNum = 0;
foreach my $line (@allLines)
{
    if ($line =~ /\.incbin\s+"baserom\.gba",\s*0x\w+,\s*(.+?)\s*(\@.*)?$/)
    {
        my $size = hex($1);
        $incbinTotal += $size;
        $incbinNum++;
    }
}
print "\n";
my $dataTotal = $srcdata + $data;
#my $rodataTotal = $srcrodata + $rodata;
my $srcDataPct = sprintf("%.4f", 100 * $srcdata / $dataTotal);
#my $srcRoDataPct = sprintf("%.4f", 100 * $srcrodata / $rodataTotal);
my $dataPct = sprintf("%.4f", 100 * $data / $dataTotal);
#my $rodataPct = sprintf("%.4f", 100 * $rodata / $rodataTotal);
my $incbinTotalPct = sprintf("%.4f", 100 * $incbinTotal / $dataTotal);
print "$dataTotal total bytes of data\n";
print "$srcdata bytes of data in src ($srcDataPct%)\n";
print "$data bytes of data in data ($dataPct%)\n";
#print "$srcrodata bytes of rodata in src ($srcRoDataPct%)\n";
#print "$rodata bytes of rodata in rodata ($rodataPct%)\n";
print "$incbinNum baserom incbins with a combined $incbinTotal bytes ($incbinTotalPct%)\n";
print "\n";
