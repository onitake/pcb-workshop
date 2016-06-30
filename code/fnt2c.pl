#!/usr/bin/perl

use strict;
use warnings;
no warnings qw(uninitialized);
use Encode qw(encode);

if (@ARGV < 2) {
	print(STDERR "Usage: fnt2c.pl <font.fnt> <font.c>\n");
	exit(1);
}

# All ISO8859-15 glyphs:
#
# 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
# 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
# /* */1, /*!*/0, /*"*/0, /*#*/0, /*$*/0, /*%*/0, /*&*/0, /*'*/0, /*(*/0, /*)*/0, /***/0, /*+*/0, /*,*/0, /*-*/0, /*.*/0, /*/*/0,
# /*0*/7, /*1*/8, /*2*/9, /*3*/0, /*4*/0, /*5*/0, /*6*/10, /*7*/0, /*8*/0, /*9*/0, /*:*/0, /*;*/0, /*<*/0, /*=*/0, /*>*/0, /*?*/0, 
# /*@*/0, /*A*/0, /*B*/0, /*C*/2, /*D*/0, /*E*/0, /*F*/0, /*G*/0, /*H*/0, /*I*/5, /*J*/0, /*K*/0, /*L*/0, /*M*/0, /*N*/6, /*O*/3,
# /*P*/0, /*Q*/0, /*R*/0, /*S*/4, /*T*/0, /*U*/0, /*V*/0, /*W*/0, /*X*/0, /*Y*/0, /*Z*/0, /*[*/0, /*\*/0, /*]*/0, /*^*/0, /*_*/0, 
# /*`*/0, /*a*/0, /*b*/0, /*c*/0, /*d*/0, /*e*/0, /*f*/0, /*g*/0, /*h*/0, /*i*/0, /*j*/0, /*k*/0, /*l*/0, /*m*/0, /*n*/0, /*o*/0,
# /*p*/0, /*q*/0, /*r*/0, /*s*/0, /*t*/0, /*u*/0, /*v*/0, /*w*/0, /*x*/0, /*y*/0, /*z*/0, /*{*/0, /*|*/0, /*}*/0, /*~*/0, /*DEL*/0, 
# 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
# 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
# /*NBSP*/1, /*¡*/0, /*¢*/0, /*£*/0, /*€*/0, /*¥*/0, /*Š*/0, /*§*/0, /*š*/0, /*©*/0, /*ª*/0, /*«*/0, /*¬*/0, /*­ */3, /*®*/0, /*¯*/0,
# /*°*/0, /*±*/0, /*²*/0, /*³*/0, /*Ž*/0, /*µ*/0, /*¶*/0, /*·*/0, /*ž*/0, /*¹*/0, /*º*/0, /*»*/0, /*Œ*/0, /*œ*/0, /*Ÿ*/0, /*¿*/0,
# /*À*/0, /*Á*/0, /*Â*/0, /*Ã*/0, /*Ä*/0, /*Å*/0, /*Æ*/0, /*Ç*/0, /*È*/0, /*É*/0, /*Ê*/0, /*Ë*/0, /*Ì*/0, /*Í*/0, /*Î*/0, /*Ï*/0,
# /*Ð*/0, /*Ñ*/0, /*Ò*/0, /*Ó*/0, /*Ô*/0, /*Õ*/0, /*Ö*/0, /*×*/0, /*Ø*/0, /*Ù*/0, /*Ú*/0, /*Û*/0, /*Ü*/0, /*Ý*/0, /*Þ*/0, /*ß*/0,
# /*à*/0, /*á*/0, /*â*/0, /*ã*/0, /*ä*/0, /*å*/0, /*æ*/0, /*ç*/0, /*è*/0, /*é*/0, /*ê*/0, /*ë*/0, /*ì*/0, /*í*/0, /*î*/0, /*ï*/0,
# /*ð*/0, /*ñ*/0, /*ò*/0, /*ó*/0, /*ô*/0, /*õ*/0, /*ö*/0, /*÷*/0, /*ø*/0, /*ù*/0, /*ú*/0, /*û*/0, /*ü*/0, /*ý*/0, /*þ*/0, /*ÿ*/0,

open(my $fnt, '<:utf8', $ARGV[0]) or die("Can't open $ARGV[1]");

my $descriptor = { };
my $state;
my $glyph;
my $buffer = '';
sub parsebitmap {
	my ($buffer) = @_;
	my @bitmap;
	for my $row (split("\n", $buffer)) {
		chomp($row);
		my @bits;
		for my $bit (split('', $row)) {
			if ($bit =~ /[. ]/) {
				push(@bits, 0);
			} elsif ($bit =~ /[=#*xX]/) {
				push(@bits, 1);
			} else {
				die("Invalid pixel character: $bit");
			}
		}
		push(@bitmap, \@bits);
	}
	return \@bitmap;
}
while (my $line = <$fnt>) {
	if (defined($state)) {
		if ($line =~ /^---\n$/) {
			if ($state eq 'license') {
				$descriptor->{license} = $buffer;
			} elsif ($state eq 'default') {
				$descriptor->{default} = parsebitmap($buffer);
			} elsif ($state eq 'glyph') {
				$descriptor->{glyphs}->{$glyph} = parsebitmap($buffer);
			} else {
				die("Invalid state: $state");
			}
			undef($state);
			$buffer = '';
			undef($glyph);
		} else {
			$buffer .= $line;
		}
	} else {
		if ($line =~ /^NAME (.*)\n$/) {
			$descriptor->{name} = $1;
		} elsif ($line =~ /^CREATOR (.*)\n$/) {
			$descriptor->{creator} = $1;
		} elsif ($line =~ /^SIZE ([0-9]+|p|P) ([0-9]+)\n$/) {
			if (lc($1) eq 'p') {
				$descriptor->{type} = 'proportional';
				$descriptor->{height} = $2;
			} else {
				$descriptor->{type} = 'monospace';
				$descriptor->{width} = $1;
				$descriptor->{height} = $2;
			}
		} elsif ($line =~ /^LICENSE\n$/) {
			$state = 'license';
		} elsif ($line =~ /^DEFAULT\n$/) {
			$state = 'default';
		} elsif ($line =~ /^GLYPH (.)\n$/) {
			$state = 'glyph';
			$glyph = ord(encode('ISO-8859-15', $1));
		} else {
			die("Invalid line: $line");
		}
	}
}

close($fnt);

#use Data::Dumper;
#print Dumper($descriptor);
#exit(0);

open(my $c, '>', $ARGV[1]) or die("Can't open $ARGV[2]");

print($c "/*\n");
print($c " * $descriptor->{name}\n");
print($c " * $descriptor->{creator}\n");
print($c " *\n");
for my $line (split("\n", $descriptor->{license})) {
	print($c " * $line\n");
}
print($c " */\n");

print($c "#include <stdint.h>\n");
print($c "#include <avr/pgmspace.h>\n");

my $name = uc($descriptor->{name});
sub printglyph {
	my ($glyph) = @_;
	my @cols;
	for my $row (reverse(@{$glyph})) {
		for (my $i = 0; $i < @{$row}; $i++) {
			$cols[$i] = ($cols[$i] << 1) | $row->[$i];
		}
	}
	return join(', ', map({ sprintf("0x%02x", $_) } @cols));
}
print($c "const unsigned char FONT_${name}[][$descriptor->{width}] PROGMEM = {\n");
print($c "\t{ " . printglyph($descriptor->{default}) . " },\n");
my @charmap;
my $index = 1;
for my $char (keys(%{$descriptor->{glyphs}})) {
	my $glyph = $descriptor->{glyphs}->{$char};
	print($c "\t{ " . printglyph($glyph) . " },\n");
	$charmap[$char] = $index++;
}
print($c "};\n");

print($c "const unsigned char FONTMAP_${name}[] PROGMEM = {\n");
my $llen = 0;
for (my $char = 0; $char < 256; $char++) {
	print($c "\t");
	if (defined($charmap[$char])) {
		printf($c "$charmap[$char],");
	} else {
		print($c "0,");
	}
	if (++$llen >= 16 or $char == 255) {
		print($c "\n");
		$llen = 0;
	}
}
print($c "};\n");

close($c);
